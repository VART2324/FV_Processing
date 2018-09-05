/* global variables for ball0 */

int x0 = 0; //starting position
int y0 = 0; //starting position
int w0 = 10; //width of ellipse
int h0 = 10; //height of ellipse

int x0Speed = 3; //speed
int y0Speed = 3; //speed

/*------------------------------------------------------------*/

/* global variables for ball1 */

int x1 = 200; //different starting position
int y1 = 150; //different starting position
int w1 = 30;
int h1 = 30;

int x1Speed = 5; //different speed
int y1Speed = 5; //different speed

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
  if (x0 > width || x0 < 0) { //if x0 is greater than width or x0 is less than 0...
    x0Speed = x0Speed * dir; //...multiply x0Speed by negative one to reverse its direction
  }
  /* end of if statement */
  
  /* an if statement */
  if (y0 > height || y0 < 0) { //if y0 is greater than height or y0 is less than 0...
    y0Speed = y0Speed * dir;  //...multiply y0Speed by negative one to reverse its direction
  }
  /* end of if statement */
  
  /* an if statement */
  if (x1 > width || x1 < 0) { //if x1 is greater than width or x1 is less than 0...
    x1Speed = x1Speed * dir; //...multiply x1Speed by negative one to reverse its direction
  }
  /* end of if statement */

  /* an if statement */
  if (y1 > height || y1 < 0) { //if y1 is greater than height or y1 is less than 0...
    y1Speed = y1Speed * dir;  //...multiply y1Speed by negative one to reverse its direction
  }
  /* end of if statement */
  
  x0 = x0 + x0Speed; //keep adding x0Speed to x0 with each loop of void draw
  y0 = y0 + y0Speed; //keep adding y0Speed to y0 with each loop or void draw
  x1 = x1 + x1Speed; //keep adding x1Speed to x1 with each loop of void draw
  y1 = y1 + y1Speed; //keep adding y1Speed to y1 with each loop or void draw

  ellipse(x0, y0, w0, h0); //draws an ellipse using (x0,y0) for its position and (w0,h0) for its dimensions.
  ellipse(x1, y1, w1, h1); //draws an ellipse using (x1,y1) for its position and (w1,h1) for its dimensions.

  stroke(359, 100, 50); //add an outline of with this color HSB
  line(x0, y0, x1, y1); //draws a line beginning at x0, y0 and ending at x1, y1
} //loops back to start of void draw