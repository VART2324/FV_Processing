PShape flyingsaucer1; //Create a PShape variable to store the SVG vector file.


//Everything in "void setup" happens once at the beginning.
void setup() {

  size(800, 600);
  background(50); //Sets the canvas color. Using one number between 0 and 255 means grayscale.

  flyingsaucer1 = loadShape("flyingsaucer1.svg"); //Load the SVG file from the data folder.
}
//End of "void setup".


//Everything in "void draw" loops forever.
void draw() {

  background(255, 0, 128); //Sets the canvas color. Try changing each number between 0 and 255. (R,G,B)

  //Variables
  float time = millis() * 0.001; //To be used within noise(*HERE*). Try changing the number to 0.0005 or 0.005.
  float range = 800; //Used to increase noise(). Changes the distance the top ship travels.

  //The top flying saucer.
  float x0 = noise(time) * range; //The horizontal position of the top flying saucer.
  float y0 = height * 0.3333; //The vertical position of the top flying saucer.
  shape(flyingsaucer1, x0, y0, 400, 400); //The top flying saucer. The last two numbers set the size.

  //The bottom flying saucer.
  float x1 = random(range); //The horizontal position of the bottom flying saucer.
  float y1 = height * 0.6666; //The vertical position of the bottom flying saucer.
  shape(flyingsaucer1, x1, y1, 400, 400); //The bottom flying saucer. The last two numbers set the size.
}
//End of "void draw". Back to the beginning of "void draw"...