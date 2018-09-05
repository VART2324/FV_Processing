//These are Global Variables
PImage girl01;  //Create a PImage variable to store an image.
PImage girl02;  //Create a PImage variable to store another image.
PShape lips;    //Create a PShape variable to store an SVG. 



//Beginning of "void setup". Code that runs once at the beginning.
void setup()
{
  size(800, 600);  //The size of the canvas.

  lips = loadShape("lips.svg");       //Load a shape/SVG file into the variable.

  girl01 = loadImage("kkbbg01.png");  //Load an image/PNG file into the variable girl01.

  girl02 = loadImage("kkbbg02.png");  //Load an image/PNG file into the variable girl02.
}
//End of "void setup".



//Beginning of "void draw". Code that loops.
void draw()
{
  background(200, 5, 5);  //Color the background.

//The code below displays a shape (PShape, posX, posY, sizeW, sizeH)
  shape(lips, 400, 292, 1600, 2166);    //Display this shape at these coordinates at this size.


//The code below draws lines (posX1, posY1, posX2, posY2)
  strokeWeight(5);             //Set the stroke thickness in pixels for the lines below.
  stroke(255, 50);             //Set the stroke color for the lines below.
  line(0, 385, 800, 480);      //Draw a line.
  line(0, 470, 150, 600);      //Draw a line.
  line(0, 470, 800, 380);      //Draw a line.
  line(640, 600, 800, 480);    //Draw a line.


//The code below displays images (PImage, posX, posY, sizeW, sizeH)
  imageMode(CENTER);                    //Set the image mode to center for the images below.
  image(girl01, 650, 300, 202, 430);    //Display this image at these coordinates at this size.
  image(girl02, 178, 300, 202, 430);    //Display this image at these coordinates at this size.


//The code below displays text ("words", posX, posY).
  noStroke();                           //Remove the stroke/outline from everything below.
  fill(255, 255, 255, 50);             //Set the fill color and transparency for the text below.
  textAlign(CENTER, BOTTOM);           //Align text.
  textSize(187);                       //Size of text below.
  text("NOBODY", 400, 307);            //Display text "NOBODY" at these coordinates.
  textSize(50);                        //Size of text below.
  text("CANNOT TALK TO", 400, 329);    //Display text "CANNOT TALK TO" at these coordinates.
  textSize(250);                       //Size of text below.
  text("SUSAN", 400, 568);             //Display text "SUSAN" at these coordinates.
}
//End of "void draw". Loops back to beginning of "void draw"...