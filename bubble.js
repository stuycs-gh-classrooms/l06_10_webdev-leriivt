var arr = new Array(100);
var pos; //current position we are looking at
var testPos; //second position to be tested
var endPos; //last position needed to be tested


function setup() {
  createCanvas(400, 400);
  background(0);
  arr = randomArray(100);
  frameRate(500);

  pos = 0;
  testPos = pos + 1;
  endPos = arr.length - 1;
}//setup


function draw() {
  background(0);
  
  //if endpos is 0, sorted! just display
  if (endPos == 0){
    displayArray(arr, -1, -1, -1);
  }
  
  //else
  else{
    displayArray(arr, pos, testPos, endPos);
    //compare values at pos and testPos
    //if out of order, swap
    if (arr[pos] > arr[testPos]){
      swap(arr, pos, testPos);
    }
    
    //if not out of order
    else{
      //+1 to pos and testPos
      pos++;
      testPos++;
    }
    //if pos is at endpos
    if (pos == endPos){
      //reset pos to 0 (and testPos to 1)
      pos = 0;
      testPos = 1;
      //decrease endPos
      endPos--;
    }
  }
}//draw


function swap(arr, i0, i1) {
  var t = arr[i0];
  arr[i0] = arr[i1];
  arr[i1] = t;
}//swap

function randomArray(num) {
  var values = new Array(num);

  for (var i=0; i<values.length; i++) {
    values[i] = int(random(100, 400));
  }//random value loop
  return values;
}//randomArray

function displayArray(arr, p, tp, sp) {
  var barWidth = width / arr.length;
  var x = 0;
  var y = 0;
  noStroke();
  for (var i=0; i<arr.length; i++) {
    y = height - arr[i];
    if (i == p ) {
      fill(230, 0, 230);
    }
    else if (i == tp) {
      fill(0, 230, 230);
    }
    else if (i == sp) {
      fill(230, 230, 0);
    }
    else {
      fill(255);
    }
    rect(x, y, barWidth, arr[i]);
    x+= barWidth;
  }
}//displayArray
