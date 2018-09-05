
void setup() {                     //Everything in 'void setup' happens once:

  size (800, 600);                 //Sets the size of the canvas 
  background(150, 200, 5);         //Sets the color of the canvas in R,G,B
  
}                                  //End of 'void setup'.



void draw() {                      //Everything in 'void draw' loops 60 times each second, forever:

  //The following is one 'for loop' nested inside of another 'for loop'.
  //The Amanda 'for loop' repeats the circle to make a column.
  //The Bob 'for loop' has the Amanda 'for loop' nested inside of it's curly brackets.
  //The Bob 'for loop' repeats the Amanda 'for loop' making a row of columns. A grid.
  
  for (int Bob = 20; Bob < 800; Bob += 40){ //This makes a row of the Amanda column below thus making a grid.
    for (int Amanda = 20; Amanda < 600; Amanda += 40){ //This makes one column of Amanda which is repeated above to make the grid.
    
      fill(255, 255, 255);           //Fills everything below with this color. R,G,B
      stroke(0, 0, 0);               //Outlines everything below with this color. R,G,B
      strokeWeight(2);               //Sets the thickness of the outline.
      ellipse(Bob, Amanda, 30, 30);  //Draws a row of 'ellipses' at 'Bob' horizontal position and 'Amanda' vertical position.
                                     //Try changing '40' to another number. Click 'Run' again.
                                     //The size of the ellipse is '30' in width, and '30' is height.
                                     
    }                                //This curly bracket is the end of 'Amanda'.
  }                                  //This curly bracket is the end of 'Bob'.
    
}                                  //End of 'void draw'. Loops back to beginning of 'void draw' forever...