class Flower {
  float x, y, d;
  Flower(float xPos, float yPos, float diam) {
    x = xPos;
    y = yPos;
    d = diam;
  }
  void render() {
    pushMatrix();
    translate(x, y);
    ellipse(0, 0, d, d);
    popMatrix();
  }
}
