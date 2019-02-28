import processing.pdf.*;

ArrayList<Flower> flowers;

void setup(){
  size(500, 700, P2D);
  background(255);
  
  flowers = new ArrayList<Flower>();
  int total = 30;
  for (int i = 0; i < total; i++) {
    float x = random(width);
    float y = random(height);
    float r = random(80, 200); 
    Flower flower = new Flower(x, y, r);
    flowers.add(flower);
  }
  beginRaw(PDF, "flowers.pdf");
}

void draw() {
  for (Flower flower : flowers) {
    flower.render();
  }
}

void keyPressed() {
  save("flowers.png");
  endRaw();
  exit();
}
