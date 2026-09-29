// Cuts ModIcon.png out of its near-black corner background, rotates it, and composes it into the
// rendered Preview.png's free corner, as if the icon were emerging from it (STYLE_RIMWORLD.md,
// "Le ModIcon détouré sur la vitrine", 2026-09-29). Run after render-preview.cjs, since it
// composites onto the already-rendered Mod/About/Preview.png rather than the HTML source.
const fs=require('fs'),path=require('path');
const sharp=require('sharp');

const ROOT=path.join(__dirname,'..');
const ICON=path.join(ROOT,'Mod/About/ModIcon.png');
const PREVIEW=path.join(ROOT,'Mod/About/Preview.png');

// Text block sits top-left in preview.html, so per STYLE_RIMWORLD.md the stamp goes to the SAME
// side as the text (bottom-left, not the opposite corner), rotation +15deg. Overridable via env
// for comparison renders (CORNER, ROTATION, SHIFT: extra px pushed into the corner, i.e. bleeding
// past the canvas edge instead of just touching it).
const CORNER=process.env.CORNER||'bottom-left';
const ROTATION=process.env.ROTATION?Number(process.env.ROTATION):(CORNER==='bottom-right'?-15:15);
const CUTOUT_SIDE=process.env.CUTOUT_SIDE?Number(process.env.CUTOUT_SIDE):190; // px, before rotation
const SHIFT=process.env.SHIFT?Number(process.env.SHIFT):25; // px bled past the canvas edge
const CORNER_RADIUS=process.env.CORNER_RADIUS?Number(process.env.CORNER_RADIUS):48; // px, square's own corners before rotation
const OUT=process.env.OUT||null;

(async()=>{
const icon=sharp(ICON);
const meta=await icon.metadata();
const {data,info}=await icon.raw().toBuffer({resolveWithObject:true});
const idx=(x,y)=>(y*info.width+x)*info.channels;

// Reference background colour: average of the four corner pixels.
let cr=0,cg=0,cb=0;
for(const [x,y] of [[0,0],[meta.width-1,0],[0,meta.height-1],[meta.width-1,meta.height-1]]){
  const i=idx(x,y);cr+=data[i];cg+=data[i+1];cb+=data[i+2];
}
cr/=4;cg/=4;cb/=4;

// Flood-fill the background from the image border instead of a global colour-distance test:
// a global test also flags interior pixels that happen to be close to the background colour
// (the dark linework of the dodo's eye/beak), turning them semi-transparent and letting the
// busy scene behind bleed through as pixelated noise. Flood fill only cuts the connected
// background region, so interior dark pixels stay fully opaque regardless of their colour.
const T_BG=40;
const W=meta.width,H=meta.height;
const isBg=new Uint8Array(W*H); // 1 = background (to become transparent)
const visited=new Uint8Array(W*H);
const stack=[];
for(let x=0;x<W;x++){stack.push([x,0]);stack.push([x,H-1]);}
for(let y=0;y<H;y++){stack.push([0,y]);stack.push([W-1,y]);}
while(stack.length){
  const [x,y]=stack.pop();
  if(x<0||y<0||x>=W||y>=H)continue;
  const p=y*W+x;
  if(visited[p])continue;
  visited[p]=1;
  const i=idx(x,y);
  const dr=data[i]-cr,dg=data[i+1]-cg,db=data[i+2]-cb;
  const dist=Math.sqrt(dr*dr+dg*dg+db*db);
  if(dist>T_BG)continue;
  isBg[p]=1;
  stack.push([x+1,y],[x-1,y],[x,y+1],[x,y-1]);
}

let minX=W,minY=H,maxX=0,maxY=0;
const rgb=Buffer.alloc(W*H*3);
const alphaBuf=Buffer.alloc(W*H);
for(let y=0;y<H;y++)for(let x=0;x<W;x++){
  const i=idx(x,y),p=y*W+x,o=p*3;
  rgb[o]=data[i];rgb[o+1]=data[i+1];rgb[o+2]=data[i+2];
  const alpha=isBg[p]?0:255;
  alphaBuf[p]=alpha;
  if(alpha>0){if(x<minX)minX=x;if(x>maxX)maxX=x;if(y<minY)minY=y;if(y>maxY)maxY=y;}
}

// Blur the alpha channel alone (sigma ~1) so the mask boundary anti-aliases smoothly on upscale,
// without touching RGB or letting the blur soften interior colour detail.
const blurredAlpha=await sharp(alphaBuf,{raw:{width:W,height:H,channels:1}})
  .blur(1).toColourspace('b-w').raw().toBuffer();

const rgba=Buffer.alloc(W*H*4);
for(let p=0;p<W*H;p++){
  rgba[p*4]=rgb[p*3];rgba[p*4+1]=rgb[p*3+1];rgba[p*4+2]=rgb[p*3+2];rgba[p*4+3]=blurredAlpha[p];
}

// Crop to the icon's own opaque bounding box before scaling: avoids scaling empty background
// margin, which is what leaves a visible gap between the icon and the canvas edge.
const squared=await sharp(rgba,{raw:{width:W,height:H,channels:4}})
  .extract({left:minX,top:minY,width:maxX-minX+1,height:maxY-minY+1})
  .resize(CUTOUT_SIDE,CUTOUT_SIDE,{fit:'fill'})
  .png().toBuffer();
// This icon has no flat background, so the flood-fill above cuts almost nothing: the stamp reads
// as a hard-edged square tile. Round its own corners with a rounded-rect alpha mask before
// rotating, so the tile itself looks intentional instead of a plain screenshot crop.
const roundMask=Buffer.from(`<svg width="${CUTOUT_SIDE}" height="${CUTOUT_SIDE}"><rect x="0" y="0" width="${CUTOUT_SIDE}" height="${CUTOUT_SIDE}" rx="${CORNER_RADIUS}" ry="${CORNER_RADIUS}" fill="#fff"/></svg>`);
const cropped=await sharp(squared).composite([{input:roundMask,blend:'dest-in'}]).png().toBuffer();
const rotated=await sharp(cropped).rotate(ROTATION,{background:{r:0,g:0,b:0,alpha:0}}).trim().png().toBuffer();
const rotMeta=await sharp(rotated).metadata();

const preview=sharp(PREVIEW);
const previewMeta=await preview.metadata();
let left,top;
if(CORNER==='bottom-right'){
  left=previewMeta.width-rotMeta.width+SHIFT;
  top=previewMeta.height-rotMeta.height+SHIFT;
}else{ // bottom-left
  left=-SHIFT;
  top=previewMeta.height-rotMeta.height+SHIFT;
}

const dest=OUT||PREVIEW;
await preview.composite([{input:rotated,left,top}]).toFile(dest+'.tmp');
fs.renameSync(dest+'.tmp',dest);
console.log(JSON.stringify({corner:CORNER,rotation:ROTATION,cutoutSide:CUTOUT_SIDE,rotatedSize:[rotMeta.width,rotMeta.height],placedAt:[left,top],referenceBg:[Math.round(cr),Math.round(cg),Math.round(cb)]},null,2));
})();
