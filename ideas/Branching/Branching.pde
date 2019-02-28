import processing.pdf.*;

ArrayList<Flower> flowers = new ArrayList<Flower>();
ArrayList<Branch> branches = new ArrayList<Branch>();

void setup() {
  size(500, 700, P2D);
  background(255);
  Branch b = new Branch(width * 0.5f, height * 0.5f);
  branches.add(b);
}

void draw() {
  for (Flower flower : flowers) {
    flower.render();
  }
  for (Branch branch : branches) {
    branch.update();
    branch.render();
  }
}
