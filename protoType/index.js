const express = require('express')
const app = express()
const port = 3000

const path = require('path');
 const shell = require('shelljs')



app.use(express.static(path.join(__dirname, 'public')));




app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '/public/app.html'));
})



app.get('/run-nmap', (req, res) => {
var shell = require('shelljs');
shell.exec('./bin/run-nmap.sh')

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
