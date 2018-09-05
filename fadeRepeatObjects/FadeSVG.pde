//create a Block------------------------------------------
class FadeSVG {
  
  //add Fields--------------------------------------------
  char c;
  boolean alphaTrigger;
  int alphaHold;
  int alphaSpeed;
  PShape svg;
  int x;
  int y;
  int r;
  int g;
  int b;
  int alpha;
  int high;

  //add the Constructor-----------------------------------
  FadeSVG(char tempC, boolean tempTrigger, int tempHold, int tempSpeed, PShape tempSVG, int tempX, int tempY, int tempR, int tempG, int tempB, int tempAlpha, int tempHigh) {
    c = tempC;
    alphaTrigger = tempTrigger;
    alphaHold = tempHold;
    alphaSpeed = tempSpeed;
    svg = tempSVG;
    x = tempX;
    y = tempY;
    r = tempR;
    g = tempG;
    b = tempB;
    alpha = tempAlpha;
    high = tempHigh;
  }
  
  //add the Methods---------------------------------------
  void trigger() {
    if (keyPressed && key == c) {                                  //check for which key...
      alphaTrigger = true;                      //set this trigger to true
    } else {
      alphaTrigger = false;                      //set this trigger to false
    }
    if (alphaTrigger == true) {                      //turns the switch to on
      alphaReset();                          //runs the "void sManAlphaReset()" function below to reset opacity to highest
      alphaTrigger = false;                  //turns the switch off to stop the opacity from fading over and over
    }
  }
  void alphaReset() {
    alpha = high;
  }
  void fade() {                                //the "void sManFade()" function
    alphaHold = alphaSpeed;              //change sManFade to the value of sManFadeSpeed
    if (alpha >= 0) {                      //if sManAlpha is greater than or equal to 0...
      alpha += alphaHold;                //...add sManAlpha to sManFade (a negative number)
    }
  }
  void display() {
    noStroke();                                //remove all outlines
    svg.disableStyle();                    //remove all colour from the svg so they can be coloured with code
    fill(r, g, b, alpha);          //uses "int sManAlpha" to lower the alpha of the fill to 0          
    shape(svg, x, y);               //draws the shape using the fill above
  }
}