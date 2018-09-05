void setup(){
  size(800, 600);
  background(0);
  
}


void draw(){
               
  //the colour of the rectangle below
  fill(0, 20); //the first number is black, the second transparency/opacity
  //the lower the transparency, the slower the fade
  
  
  rect(0, 0, width, height);
  
  
  fill(255);  //the color of everything below
  ellipse(mouseX, mouseY, 10, 10); //the circle
  
}