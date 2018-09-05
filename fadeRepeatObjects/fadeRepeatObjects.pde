//See the chapters on Functions and Objects in the book:
//Getting Started with Processing
//https://www.dropbox.com/s/sic4aeh5kty5dj4/Getting_Started_with_Processing.pdf?dl=0

FadeSVG robot1;                    //Declare object
boolean trigger1 = false;          //make a switch and turn it off
PShape sMan1;                      //declare a shape object and name it

//------------------------------------------------- 
FadeSVG robot2;                    //Declare object
boolean trigger2 = false;          //make a switch and turn it off
PShape sMan2;                      //declare a shape object and name it

//------------------------------------------------- 

void setup() {
  size(800, 600); //sets the size of the canvas
  //-------------------------------------------------
  sMan1 = loadShape("spaceman.svg");  //load the svg
  //object-------------key,  boolean,--,speed,shape,posX, posY, R,  G,  B, alpha, alpha high
  robot1 = new FadeSVG('1', trigger1, 2, -3, sMan1, 300, 350, 100, 255, 72, 0, 255);
  //-------------------------------------------------
  sMan2 = loadShape("spaceman.svg");   //load the svg
  //object-------------key,  boolean,--,speed,shape,posX, posY, R,   G,  B,  alpha, alpha high  
  robot2 = new FadeSVG('b', trigger2, 2, -10, sMan2, 500, 350, 255, 255, 255, 0, 255);
}

//-------------------------------------------------

void draw() {
  background(0);
  //-------------------------------------------------
  robot1.trigger();
  robot1.fade();
  robot1.display();
  //-------------------------------------------------
  robot2.trigger();
  robot2.fade();
  robot2.display();
}