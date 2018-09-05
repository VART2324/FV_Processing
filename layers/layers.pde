int bullet = 400;
int speed = 10;


void setup() {
  size (800, 600);
}


void draw() {
  background(0);
  noCursor();
  
  
  //pushMatrix layer one. Ends with popMatrix
  pushMatrix();
  translate(mouseX-50, 0);
  rectMode(CENTER);
  rect(0, 400, 20, 20);
  ellipse(0, bullet, 20, 20);
  if (bullet < 0) {
    bullet = 400;
  }
  bullet = bullet-speed;
  popMatrix();
  //End of layer one

  //pushMatrix layer two. Ends with popMatrix
  pushMatrix();
  translate(mouseX+50, 0);
  rectMode(CENTER);
  rect(0, 400, 20, 20);
  ellipse(0, bullet, 20, 20);
  if (bullet < 0) {
    bullet = 400;
  }
  bullet = bullet-speed;
  popMatrix();
  //End of layer two

  rect(400, 300, 20, 20); //This shape is outside of the pushMatrix groups
}