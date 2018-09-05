//See the chapters on Functions and Objects in the book:
//Getting Started with Processing
//https://www.dropbox.com/s/sic4aeh5kty5dj4/Getting_Started_with_Processing.pdf?dl=0

FadeText wordOne;                    //Declare object
boolean trig1 = false;          //make a switch and turn it off

//------------------------------------------------- 
FadeText wordTwo;                    //Declare object
boolean trig2 = false;          //make a switch and turn it off


//------------------------------------------------- 
FadeText wordThree;                    //Declare object
boolean trig3 = false;          //make a switch and turn it off


void setup() {
  size(800, 600); //sets the size of the canvas
  //-------------------------------------------------

  //object-------------('key',speed, "word",  size, posX,posY, R,  G,  B, aLow, aHigh, trig,  ?)
  wordOne = new FadeText('1',   -3, "roger",  100,  300, 350, 255, 97, 150, 0,   255,  trig1, 2);
  //-------------------------------------------------

  //object-------------('key',speed, "word",  size, posX,posY, R,  G,  B, aLow,aHigh,trig,  ?)
  wordTwo = new FadeText('2',   -3,   "is",   200,  500, 350, 255, 97,150, 0,  255,  trig2, 2);
  

  //object---------------('key',speed, "word/sentence",   size,posX,posY, R,  G,  B, aLow,aHigh,trig, ?)
  wordThree = new FadeText('3',   -3, "fill in the blank", 50, 600, 270, 255, 97, 150, 0, 255, trig3, 2);
}

//-------------------------------------------------

void draw() {
  background(0);
  
//trigger, fade, and display first word/s 
  wordOne.trigger();
  wordOne.fade();
  wordOne.display();
  
//trigger, fade, and display second word/s
  wordTwo.trigger();
  wordTwo.fade();
  wordTwo.display();
  
//trigger, fade, and display third word/s
  wordThree.trigger();
  wordThree.fade();
  wordThree.display();
}