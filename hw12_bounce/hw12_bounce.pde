int cx1, cy1, xspeed1, yspeed1;
int cx2, cy2, xspeed2, yspeed2;
int rectHeight, rectWidth;

void setup() {
  size(550, 400);
  fill(255);
  background(0);

  rectWidth=50;
  rectHeight=25;

  cx1 = int(random(0, width-rectWidth));
  cy1 = int(random(0, height-rectHeight));
  cx2 = int(random(0, width-rectWidth));
  cy2 = int(random(0, height-rectHeight));

  xspeed1 = int(random(-5, 5));
  yspeed1 = int(random(-5, 5));
  xspeed2 = int(random(-5, 5));
  yspeed2 = int(random(-5, 5));

  xspeed1= checkIfZero(xspeed1);
  yspeed1= checkIfZero(yspeed1);
  xspeed2= checkIfZero(xspeed2);
  yspeed2= checkIfZero(yspeed2);
}

void draw() {
  background(0);
  
  rect(cx1, cy1, rectWidth, rectHeight);
  rect(cx2, cy2, rectWidth, rectHeight);
  
  checkSides1(cx1, cy1);
  checkSides2(cx2, cy2);
  
  cx1+=xspeed1;
  cy1+=yspeed1;
  cx2+=xspeed2;
  cy2+=yspeed2;
}

void checkSides1(int x, int y) {
  if (x<=0 || x>=width-rectWidth) {
    xspeed1*=-1;
  }
  if (y<=0 || y>=height-rectHeight) {
    yspeed1*=-1;
  }
}

void checkSides2(int x, int y) {
  if (x<=0 || x>=width-rectWidth) {
    xspeed2*=-1;
  }
  if (y<=0 || y>=height-rectHeight) {
    yspeed2*=-1;
  }
}

int checkIfZero(int i){
  if(i==0){
    i=5;
  }
  return i;
}
