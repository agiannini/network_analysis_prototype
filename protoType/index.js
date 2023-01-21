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
const process = spawn.spawn('bash', ['bin/run-nmap.sh']);
process.on('exit', (code) => {
    console.log("Child exited");
});


res.send("script has started");




})


app.get('/reset', (req, res) => {
const process = spawn.spawn('bash', ['bin/runscript.sh']);
process.on('exit', (code) => {
    console.log("Child exited");
});


res.send("script has started");

})






app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
