EyeBall crazy;
EyeBall nervous;

void setup() {
  size (800, 600);
  crazy = new EyeBall(500, 200, 50);
  nervous = new EyeBall(100, 200, 200);
}

void draw() {
  background(50, 50, 50);

  crazy.fidget();
  crazy.display();

  nervous.fidget();
  nervous.display();
}

class EyeBall {
  float eye_x;
  float eye_y;
  float eye;
  float iris_x;
  float iris_y;
  float iris;
  float pupil;
  float alpha;

  EyeBall(float tempEyeX, float tempEyeY, float tempEyeSize) {
    eye_x = tempEyeX;
    eye_y = tempEyeY;
    eye = tempEyeSize;
    iris_x = 0;
    iris_y = 0;
    iris = eye/2;
    pupil = iris/3;
    alpha = 255;
  }


  void display() {
    pushMatrix();  
    translate(eye_x, eye_y);
    noStroke();
    fill(255, 255, 255, alpha);
    ellipse(0, 0, eye, eye);
    fill(0, 0, 0, alpha);
    ellipse(iris_x, iris_y, iris, iris);
    popMatrix();
  }

  void fidget() {
    if (keyPressed) {
      iris_x = random(-pupil, pupil);
      iris_y = random(-pupil, pupil);
    }
  }
}