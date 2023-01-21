const express = require('express')
const app = express()
const port = 3000


const spawn = require('child_process')
const path = require('path');
 const shell = require('shelljs')



app.use(express.static(path.join(__dirname, 'public')));




app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '/public/app.html'));
})



app.get('/run-nmap', (req, res) => {
//var shell = require('shelljs');
//shell.exec('./bin/run-nmap.sh')

//res.send("nmap scan has started");

const process = spawn.spawn('bash', ['bin/run-nmap.sh']);
process.on('exit', (code) => {
    console.log("Child exited");
});


res.send("script has started");




})


app.get('/reset', (req, res) => {
//var shell = require('shelljs');
//shell.exec('nohup tshark -Y "tcp.dstport==7" > test.out &')

const process = spawn.spawn('bash', ['bin/runscript.sh']);
process.on('exit', (code) => {
    console.log("Child exited");
});


res.send("script has started");

})



//app.get('/udpoutput', (req, res) => {
//  res.sendFile(path.join(__dirname, '/public/updoutput'));
//})

//app.get('/icmpoutput', (req, res) => {
//  res.sendFile(path.join(__dirname, '/public/icmpoutput'));
//})



app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
