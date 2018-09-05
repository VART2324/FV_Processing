int x = 0; //an integer set to zero
int y = 0; //an integer set to zero
int w = 10; //an integer set to ten
int h = 10; //an integer set to ten

int ySpeed = 1; //the amount of pixels to move during each loop
int dir = -1; //multiplying by this changes the direction of movement

/*------------------------------------------------------------*/

void setup() { //everything in setup runs once

  size(400, 300); //sets the canvas dimensions
  
  colorMode(HSB, 360, 100, 100, 100);
  //changes the color mode to Hue, Saturation, Brightness
  //highest H 360, highest S 100, highest B 100
  //visit: http://colorizer.org/

  x = width/2; //changes the integer x to half of the canvas width

}//end of setup

/*------------------------------------------------------------*/

void draw() { // beginning of void draw loop

  background(0); //draws a new background over everything with each loop

  if (y > height || y < 0) { //if y is greater than height or y is less than 0...
    ySpeed = ySpeed * dir; //...multiply ySpeed by negative one to reverse its direction
  } //end of if statement

  y = y + ySpeed; //keep adding ySpeed to y with each loop
  
  ellipse(x, y, w, h); //draws an ellipse using (x,y) for its position and (w,h) for its dimensions.
  
  stroke(359,100, 50);
  line(0, 0, x, y); //draws a line beginning at 0, 0 and ending at x, y

}//end of void draw. Back to the beginning of void draw...