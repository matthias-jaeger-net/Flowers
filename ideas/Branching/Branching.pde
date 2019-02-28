import processing.pdf.*;

ArrayList<Flower> flowers = new ArrayList<Flower>();
ArrayList<Branch> branches = new ArrayList<Branch>();

void setup(){
  size(500, 700, P2D);
  background(255);
  
}

void draw() {
  for (Flower flower : flowers) {
    flower.render();
  }
}
