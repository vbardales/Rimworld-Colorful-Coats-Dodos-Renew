// Run with Node.js and the playwright/sharp packages available through NODE_PATH.
const fs=require('fs'),path=require('path'),http=require('http');
const {chromium}=require('playwright'),sharp=require('sharp');
const root=__dirname;
const lum=hex=>{const c=hex.map(v=>{v/=255;return v<=.04045?v/12.92:((v+.055)/1.055)**2.4});return c[0]*.2126+c[1]*.7152+c[2]*.0722};
const rgb=hex=>hex.slice(1).match(/../g).map(v=>parseInt(v,16));
const ratio=(a,b)=>(Math.max(a,b)+.05)/(Math.min(a,b)+.05);
(async()=>{
 const server=http.createServer((req,res)=>{const file=path.join(root,decodeURIComponent(req.url.split('?')[0]));if(!file.startsWith(root+path.sep)){res.writeHead(403).end();return}fs.readFile(file,(err,data)=>{if(err){res.writeHead(404).end();return}res.setHeader('Content-Type',file.endsWith('.html')?'text/html':file.endsWith('.json')?'application/json':'image/png');res.end(data)})});
 await new Promise(r=>server.listen(0,'127.0.0.1',r));
 let browser;
 try{
 browser=await chromium.launch({headless:true,channel:'chrome'});
 const page=await browser.newPage({viewport:{width:896,height:504},deviceScaleFactor:1});
 await page.goto(`http://127.0.0.1:${server.address().port}/preview.html`);await page.evaluate(()=>window.ready);
 const cdp=await page.context().newCDPSession(page);await cdp.send('DOM.enable');await cdp.send('CSS.enable');
 const {root:doc}=await cdp.send('DOM.getDocument');
 const report={size:[896,504],fonts:{},bounds:{},contrast:{}};
 for(const selector of ['h1','.suffix','.tag','.summary','.version']){
 const {nodeId}=await cdp.send('DOM.querySelector',{nodeId:doc.nodeId,selector});
 report.fonts[selector]=(await cdp.send('CSS.getPlatformFontsForNode',{nodeId})).fonts;
 report.bounds[selector]=await page.locator(selector).evaluate(e=>{const r=e.getBoundingClientRect();return {x:r.x,y:r.y,width:r.width,height:r.height}});
 }
 const screenshot=await page.screenshot();await sharp(screenshot).png({compressionLevel:9}).toFile(path.join(root,'../Mod/About/Preview.png'));
 await sharp(screenshot).resize(268).png().toFile(path.join(root,'preview-268.png'));
 await page.evaluate(()=>document.body.classList.add('background-only'));
 const bg=await page.screenshot();await sharp(bg).png().toFile(path.join(root,'preview-background.png'));
 const {data,info}=await sharp(bg).removeAlpha().raw().toBuffer({resolveWithObject:true});
 const palette=JSON.parse(fs.readFileSync(path.join(root,'preview-palette.json')));
 for(const selector of ['h1','.suffix','.tag','.summary']){
 const r=report.bounds[selector],ink=lum(rgb(palette[['.tag','.suffix'].includes(selector)?'inkSecondary':'inkPrimary']));let min=Infinity,point;
 for(let y=Math.floor(r.y);y<Math.ceil(r.y+r.height);y++)for(let x=Math.floor(r.x);x<Math.ceil(r.x+r.width);x++){
 const i=(y*info.width+x)*info.channels;const contrast=ratio(ink,lum([...data.subarray(i,i+3)]));if(contrast<min){min=contrast;point=[x,y]}
 }report.contrast[selector]={minimum:min,point,method:'All background pixels in text bounding rectangle, without text or shadows'};
 }
 report.contrast.badge={minimum:ratio(lum(rgb(palette.badgeInk)),lum(rgb(palette.accent)))};
 report.bytes=fs.statSync(path.join(root,'../Mod/About/Preview.png')).size;
 fs.writeFileSync(path.join(root,'preview-qa.json'),JSON.stringify(report,null,2)+'\n');
 console.log(JSON.stringify(report,null,2));
 if(Object.values(report.contrast).some(v=>v.minimum<4.5))throw Error('Contrast below 4.5:1');
 if(report.bytes>=900000)throw Error('Preview exceeds 900 KB');
 }finally{if(browser)await browser.close();server.close()}
})().catch(e=>{console.error(e);process.exitCode=1});
