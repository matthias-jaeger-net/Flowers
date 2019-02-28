class Flower {
  float xCenter;
  float yCenter;
  float theta;
  float radius;
  float nWave = 0.0f; 
  float nOff = random(200, 300);
  int lifespan = floor(random(10, 900));
  ArrayList<Flower> branches = new ArrayList<Flower>();



  Flower(float x, float y, float r) {
    xCenter = x;
    yCenter = y;
    radius = r;
  }

  void render() {
    if (lifespan > 0) {
      pushMatrix();
      translate(xCenter, yCenter);
      float xPen = cos(theta) * noise(nWave + nOff) * radius;
      float yPen = sin(theta) * noise(nWave + nOff) * radius;
      if (random(0, 1) > 0.9) {
       flower(xPen, yPen);
      }
      point(xPen, yPen);
      theta += TWO_PI / 360.0f;
      nWave += 0.01f;
      popMatrix();
      
      for (Flower f : branches) {
        f.render();
      }
    } 
    lifespan--;
  }
  
  void flower(float x, float y) {
    ellipse(x, y, 3, 3);
  }
}
