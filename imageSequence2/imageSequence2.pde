//Declare Global Variables: numbers that can be used throught the sketch.
float x = 0;          //horizontal position of rectangle.
float y = 600;        //vertical position of rectangle.
float w = 100;        //horizontal length of rectangle.
float h = 30;         //vertical length of rectangle.
float speed = 3;     //speed of movement. Change the number to change the speed.

int numFrames = 3;   // The number of frames (images). They are in the data folder of the sketch.
PImage[] sun = new PImage[numFrames];  // Make the 'sun' array to store the images.
int currentFrame = 0;  // The current frame

PShape mountains;          //Create a shape named 'mountains'.

void setup() {
  size(800, 600);
  frameRate(24);

  sun[0] = loadImage("sun00.png");  // Load this image from the data folder
  sun[1] = loadImage("sun01.png");  // Load this image from the data folder
  sun[2] = loadImage("sun02.png");  // Load this image from the data folder
  mountains = loadShape("hills.svg");  //Load this SVG from the data folder
}


void draw() {
  background(10, 100, 50);

  imageMode(CENTER); //Control image from its center axis.
  image(sun[currentFrame], 400, y); //Display the current frame at this location.

  currentFrame++;      // Advance to the next frame.
  if (currentFrame >= sun.length) { // If the current frame number is greater than or equal to the total number of frames... 
    currentFrame = 0;  // Return to first frame.
  }
  if (keyPressed){
    if (key == 'u'){
  y = y - speed;             //adds 'speed' variable to 'x' variable with each loop of 'void draw'.
  }else if(key == 'd'){
    y = y + speed;             //adds 'speed' variable to 'x' variable with each loop of 'void draw'.
  }
  }
  shape(mountains, 0, 350);  //Display the mountains SVG.
}