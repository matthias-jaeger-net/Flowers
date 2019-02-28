class Branch {
  int     Life     = 100;
  boolean Branched = false;
  boolean Alive    = true;
  PVector Pos      = new PVector();
  PVector Acc      = PVector.random2D();
  PVector Vel      = new PVector();

  Branch(float xOrigin, float yOrigin) {
    Pos.set(xOrigin, yOrigin);
  }

  void update() {
    
    if (Alive) {
      Acc.add(Vel);
      Pos.add(Acc);
      Vel.mult(0.0f);
    }

    if (Life == 0) {
      Alive = false;
      Branched = true;
    } 

    if (Branched) {
      Flower f = new Flower(Pos.x, Pos.y, 10.0f);
      flowers.add(f);
      Branched = false;
    }

    Life--;
  }
  

  void render() {
    point(Pos.x, Pos.y);
  }
}
