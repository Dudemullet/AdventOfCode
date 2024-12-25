const fs = require('fs');
const  path = require('path');
const readline = require('readline');

let filePath = path.join(__dirname,"../input.txt");

const rl = readline.createInterface({
  input: fs.createReadStream(filePath),
  crlfDelay: Infinity // Consider \r\n as a single newline
});

var leftResults = [];
var rightResults = [];
var deltas = [];

rl.on('line', (line)=> {
  let [resultLeft, _, __, resultRight] = line.split(' ');
  leftResults.push(resultLeft);
  rightResults.push(resultRight);
});

rl.on('close', ()=> {
  leftResults.sort();
  rightResults.sort();
  close();
});

let close = () => {
  leftResults.forEach((element, index)=> {
    deltas.push(Math.abs(element - rightResults[index]));
  });

  let answer = deltas.reduce((prev,curr)=> {
    return prev+curr;
  }, 0);
  console.log(answer);
}
