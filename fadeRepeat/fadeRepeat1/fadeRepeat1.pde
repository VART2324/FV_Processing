//the shapes
PShape spaceMan;                          //declare a shape object and name it


//spaceman variables
boolean spaceManTrigger = false;          //make a switch and turn it off
int spaceManAlpha = 255;                  //set the opacity to the highest
int spaceManFade = 2;                      //keeps opacity at highest until triggered then changes to match spaceManFadeSpeed
int spaceManFadeSpeed = -3;                //sets the speed of the fade out




void setup() {
  size(800, 600);                            //sets the size of the canvas
  spaceMan = loadShape("spaceman.svg");            //load the svg

}


void draw() {
  background(0);
  noStroke();                                //remove all outlines
//-------------------------------------------------  
  spaceMan.disableStyle();                    //remove all colour from the svg so they can be coloured with code
  if (spaceManTrigger) {                      //turns the switch to on
    sManAlphaReset();                          //runs the "void sManAlphaReset()" function below to reset opacity to highest
    spaceManTrigger = false;                  //turns the switch off to stop the opacity from fading over and over
  }
  sManFade();                                  //runs the "void sManFade()" function which gradually lowers "int spaceManAlpha" from 255 to 0
  fill(255, 255, 255, spaceManAlpha);          //uses "int spaceManAlpha" to lower the alpha of the fill to 0          
  shape(spaceMan, width/2, 350);               //draws the shape using the fill above
  
}

//-------------------------------------------------
//-------------------------------------------------
void sManFade() {                                //the "void sManFade()" function
  spaceManFade = spaceManFadeSpeed;              //change spaceManFade to the value of spaceManFadeSpeed
  if (spaceManAlpha >= 0) {                      //if spaceManAlpha is greater than or equal to 0...
    spaceManAlpha += spaceManFade;                //...add spaceManAlpha to spaceManFade (a negative number)
  }
}
//-----------------------
void sManAlphaReset() {                          //reset the opacity to the highest
  spaceManAlpha = 255;
}
//-------------------------------------------------
//-------------------------------------------------

void keyPressed() {                              //when a key is pressed...
  switch(key) {                                  //check for which key...
  case '1':                                      //if it is this key...
    spaceManTrigger = true;                      //set this trigger to true
    break;
  default:                                      //if no key is pressed...
    spaceManTrigger = false;                      //set this trigger to false
  }
}