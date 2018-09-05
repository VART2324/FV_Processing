float eye_x = 400;
float eye_y = 300;
float eye = 100;
float iris_x = 0;
float iris_y = 0;
float iris = eye/2;
float pupil = iris/3;
float alpha = 255;

void setup() {
  size (800, 600);
}

void draw() {
  background(50, 50, 50);

  pushMatrix();  
  translate(eye_x, eye_y);
  noStroke();
  fill(255, 255, 255, alpha);
  ellipse(0, 0, eye, eye);
  fill(0, 0, 0, alpha);
  ellipse(iris_x, iris_y, iris, iris);
  popMatrix();

  fidget();
}

void fidget() {
  if (keyPressed) {
    iris_x = random(-pupil, pupil);
    iris_y = random(-pupil, pupil);
  }
}