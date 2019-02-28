class Flower {
  float x, y, d;
  Flower(float xPos, float yPos, float diam) {
    x = xPos;
    y = yPos;
    d = diam;
    Branch b = new Branch(x, y);
    branches.add(b);
    
  }
  void render() {
    pushMatrix();
    translate(x, y);
    ellipse(0, 0, d, d);
    popMatrix();
  }
}
