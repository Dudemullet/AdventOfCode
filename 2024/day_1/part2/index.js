const fs = require('fs');
const  path = require('path');
const readline = require('readline');

let filePath = path.join(__dirname,"input.txt");

const rl = readline.createInterface({
  input: fs.createReadStream(filePath),
  crlfDelay: Infinity // Consider \r\n as a single newline
});

var leftResults = [];
var rightResults = {};
var deltas = [];

rl.on('line', (line)=> {
  let [resultLeft, _, __, resultRight] = line.split(' ');

  leftResults.push(resultLeft);

  if(resultRight in rightResults) {
    rightResults[resultRight] += 1;
  } else {
    rightResults[resultRight] = 1;
  }
});

rl.on('close', ()=> {
  close();
});

let close = () => {
  // console.log(leftResults);
  // console.log(rightResults);

  leftResults.forEach((element, index)=> {
    if(element in rightResults) {
      deltas.push(rightResults[element] * element);
    } else {
      deltas.push(0);
    }
  });

  let answer = deltas.reduce((prev,curr)=> prev+curr, 0);
  console.log(answer);
}
