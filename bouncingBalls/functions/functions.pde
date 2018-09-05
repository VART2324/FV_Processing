/*------------------------------------------------------------*/

void setup() { //runs once at the start
  size (800, 600); //the canvas size
  colorMode(HSB, 360, 100, 100);
  //changes the color mode to Hue, Saturation, Brightness
  //highest H 360, highest S 100, highest B 100
  //visit: http://colorizer.org/
}

/*------------------------------------------------------------*/

void draw() { //loops forever after void setup
  background(10, 50, 72); //colors the background
  eye(200, 400, 100); //calls the eyeBall function. gives it numbers for posX, posY, diameter
  eye(400, 300, 150); //calls the eyeBall function. gives it numbers for posX, posY, diameter
  eye(600, random(290, 310), 200); //calls the eyeBall function. gives it numbers for posX, posY, diameter
}

/*------------------------------------------------------------*/

void eye(float posX, float posY, float diameter) { //tells the eye what things can be changed
  noStroke(); //removes any outlines from the shapes below
  fill(0, 0, 100); //fills the eyeball with this HSB color
  ellipse(posX, posY, diameter, diameter); //draws the eyeball using numbers provided in void draw
  fill(310, 50, 30); //fills the iris with this HSB color
  ellipse(posX, posY, diameter/2, diameter/2); //draws the iris using numbers provided in void draw
  fill(0, 0, 0); //fills the pupil with this HSB color
  ellipse(posX, posY, diameter/4, diameter/4); //draws the pupil using numbers provided in void draw
}