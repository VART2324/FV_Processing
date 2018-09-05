PImage rocket;                     //Create a PImage variable named 'rocket' to store the image.

void setup() {                     //Everything in 'void setup' happens once:

  size (800, 600);                 //Sets the size of the canvas 
  background(150, 200, 5);         //Sets the color of the canvas in R,G,B
  
  rocket = loadImage("rocket.png");//Load the image into the variable.
  
}                                  //End of 'void setup'.



void draw() {                      //Everything in 'void draw' loops 60 times each second, forever:
  
  for (int Bob = 40; Bob <= 800; Bob += 80){    //Everything between these curly brackets tells the 'for loop' what to do with 'Bob'.
    for (int Amanda = 40; Amanda <= 600; Amanda += 60){  //Everything between these curly brackets tells the 'for loop' what to do with 'Amanda'.

      imageMode(CENTER);              //Center the Image.
      image(rocket, Bob, Amanda, 30, 50);  //Draws a grid of 'rockets' at 'Bob' horizontal position and 'Amanda' vertical position.
                                     //Try changing the numbers. Click 'Run' again.
                                     //The size of the rocket is '30' in width, and '50' is height.
    }                                //This curly bracket is the end of 'Amanda'.
  }                                  //This curly bracket is the end of 'Bob'.
    
}                                  //End of 'void draw'. Loops back to beginning of 'void draw' forever...