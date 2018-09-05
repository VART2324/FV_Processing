
void setup() {                     //Everything in 'void setup' happens once:

  size (800, 600);                 //Sets the size of the canvas 
  background(150, 200, 5);         //Sets the color of the canvas in R,G,B
  
}                                  //End of 'void setup'.



void draw() {                      //Everything in 'void draw' loops 60 times each second, forever:
  
  for (                            //This is called a 'for loop'. It says:
    int Amanda = 20;               //Make an 'integer' variable named 'Amanda' that is '20'...
    Amanda < 600;                  //As long as 'Amanda' is less than '800'...
    Amanda += 40)                  //Keep adding '40' to 'Amanda'. (So 'Amanda' starts at 20, then is 60, then 100, 140, 180, 220...)
  {                                //Everything between these curly brackets tells the 'for loop' what to do with 'Amanda'.
    fill(255, 255, 255);           //Fills everything below with this color.
    stroke(0, 0, 0);               //Outlines everything below with this color.
    strokeWeight(2);               //Sets the thickness of the outline.
    ellipse(400, Amanda, 30, 30);  //Draws an 'ellipse' at '400' horizontal or 'x' position.
                                   //The vertical position or 'y' is 'Amanda' and keeps increasing by '40'.
                                   //So we get a row of 'Amandas' each 40 pixels from each other.
                                   //Try changing '40' to another number. Click 'Run' again.
                                   //The size of the ellipse is '30' in width, and '30' is height.
  }                                //This curly bracket is the end of 'for loop'.
    
}                                  //End of 'void draw'. Loops back to beginning of 'void draw' forever...