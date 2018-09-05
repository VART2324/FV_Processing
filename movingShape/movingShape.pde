//Move a shape across the canvas

//Declare Global Variables: numbers that can be used anywhere throughout the sketch.
float x = 0;          //horizontal position of rectangle.
float y = 300;        //vertical position of rectangle.
float w = 100;        //horizontal length of rectangle.
float h = 30;         //vertical length of rectangle.
float speed = 1;      //speed of movement. Change the number to change the speed.



void setup() {        //code within the setup block runs just once when the program starts.

  size(800, 600);     //sets the (width, height) of the canvas.
  
}                     //the setup block ends here, and does not run again.


void draw() {                //code within the draw block runs from top to bottom, the repeats until you quit.

  background(255, 128, 64);   //sets the color of the canvas. ((red 0-255), (green 0-255), (blue 0-255))

  rectMode(CENTER);          //sets the axis of the rectangle to it's center.
  rect(x, y, w, h);          //draws a rectangle using the global variables declared above.

  x = x + speed;             //adds 'speed' variable to 'x' variable with each loop of 'void draw'.
  
}                            //the draw block ends here, then repeats.