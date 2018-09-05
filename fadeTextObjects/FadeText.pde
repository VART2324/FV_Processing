//create a Block------------------------------------------
class FadeText {
  
  //add Fields--------------------------------------------
  char c;
  boolean alphaTrigger;
  int alphaHold;
  int alphaSpeed;
  String word;
  int tSize;
  
  int x;
  int y;
  
  int r;
  int g;
  int b;

  int aLow;
  int aHigh;

  //add the Constructor-----------------------------------
  FadeText( char tempC, int tempSpeed, String tempWord, int tempSize, int tempX, int tempY, int tempR, int tempG, int tempB, int tempLow, int tempHigh, boolean tempTrigger, int tempHold) {
    c = tempC;
    alphaTrigger = tempTrigger;
    alphaHold = tempHold;
    alphaSpeed = tempSpeed;
    word = tempWord;
    
    tSize = tempSize;
    
    x = tempX;
    y = tempY;
    
    r = tempR;
    g = tempG;
    b = tempB;

    aLow = tempLow;
    aHigh = tempHigh;
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
    aLow = aHigh;
  }
  void fade() {                                //the "void sManFade()" function
    alphaHold = alphaSpeed;              //change sManFade to the value of sManFadeSpeed
    if (aLow >= 0) {                      //if sManAlpha is greater than or equal to 0...
      aLow += alphaHold;                //...add sManAlpha to sManFade (a negative number)
    }
  }
  void display() {
    noStroke();                                //remove all outlines
                        //remove all colour from the svg so they can be coloured with code
        
    fill(r, g, b, aLow);
    textSize(tSize);
    textAlign(CENTER);
    text(word, x, y);               //draws the shape using the fill above
  }
}