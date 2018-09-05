int x = 0;
int y = 0;
int w = 10;
int h = 10;

int xSpeed = 3;
int ySpeed = 3;

int dir = -1;

/*------------------------------------------------------------*/

void setup() { //runs once at the start
  size(400, 300); //the canvas size
  colorMode(HSB, 360, 100, 100, 100);
  //changes the color mode to Hue, Saturation, Brightness
  //highest H 360, highest S 100, highest B 100
  //visit: http://colorizer.org/
}

/*------------------------------------------------------------*/

void draw() { //loops forever after void setup
  background(10, 50, 72); //colors the background

  /* an if statement */
  if (x > width || x < 0) { //if x is greater than width or x is less than 0...
    xSpeed = xSpeed * dir; //...multiply xSpeed by negative one to reverse its direction
  }
  /* end of if statement */

  /* an if statement */
  if (y > height || y < 0) { //if y is greater than height or y is less than 0...
    ySpeed = ySpeed * dir;  //...multiply ySpeed by negative one to reverse its direction
  }
  /* end of if statement */
  
  x = x + xSpeed; //keep adding xSpeed to x with each loop of void draw
  y = y + ySpeed; //keep adding ySpeed to y with each loop or void draw

  ellipse(x, y, w, h); //draws an ellipse using (x,y) for its position and (w,h) for its dimensions.

  stroke(359, 100, 50); //add an outline of with this color HSB
  line(0, 0, x, y); //draws a line beginning at 0, 0 and ending at x, y
  line(x, y, width, height); //draws a line beginning at x, y and ending at width, height (lower corner)
} //loops back to start of void draw