//processing functions needed: fill(), rect(), background(), random()
//processing control structures needed: loops, setup, int-variables, functions
//plan:
//create a function that randomly draws rectangles given color imputs
//randomize colors
//loop an invocation of that function

void setup() {
  size(400, 400);
  background(255);

  int R, G, B;
  int randNum;
  R=0;
  G=0;
  B=0;

  int counter=0;

  while (counter<250) {
    randNum= int(random(5));

    while (randNum==0) {
      R=255;
      G=0;
      B=0;
      randNum+=100;
    }//red
    while (randNum==1) {
      R=255;
      G=255;
      B=0;
      randNum+=100;
    }//yellow
    while (randNum==2) {
      R=0;
      G=0;
      B=255;
      randNum+=100;
    }//blue
    while (randNum==3) {
      R=255;
      G=255;
      B=255;
      randNum+=100;
    }//white
    while (randNum==4) {
      R=0;
      G=0;
      B=0;
      randNum+=100;
    }//black
    
    colorfulRect(R, G, B);
    counter++;
  }
}

void colorfulRect(int R, int G, int B) {
  fill(R, G, B);
  rect(int(random(400)), int(random(400)), int(random(80)), int(random(80)));
}

