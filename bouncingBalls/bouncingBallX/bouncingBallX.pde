int x = 0; //an integer set to zero
int y = 0; //an integer set to zero
int w = 10; //an integer set to ten
int h = 10; //an integer set to ten

int xSpeed = 5; //the amount of pixels to move during each loop
int dir = -1; //multiplying by this changes the direction of movement

/*------------------------------------------------------------*/

void setup() {  //runs once at the start
  size(400, 300); //sets the canvas dimensions
  colorMode(HSB, 360, 100, 100, 100);
  //changes the color mode to Hue, Saturation, Brightness
  //highest H 360, highest S 100, highest B 100
  //visit: http://colorizer.org/

  y = height/2; //changes the integer y to half of the canvas height

}//end of setup

/*------------------------------------------------------------*/

void draw() { // beginning of void draw loop

  background(0); //draws a new background over everything with each loop

  //the following is an if statement:
  if (x > width || x < 0) { //if x is greater than width or x is less than 0...
    xSpeed = xSpeed * dir; //...multiply xSpeed by negative one to reverse its direction
  }
  //end of if statement

  x = x + xSpeed; //keep adding xSpeed to x with each loop
  
  ellipse(x, y, w, h); //draws an ellipse using (x,y) for its position and (w,h) for its dimensions.
  
  stroke(359,100, 50);
  line(x, y, width, height); //draws a line beginning at (x,y) and ending at (width,height)

}//end of void draw. Back to the beginning of void draw...