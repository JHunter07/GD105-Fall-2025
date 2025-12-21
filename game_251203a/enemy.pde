class Enemy {
  PVector position;
  float speed = 10;
  float radius = 40;
  
  Enemy(PVector pos) {
    position = pos;
  }
  void display() {
    //background(0); // setting background to black
    circle (position.x, position.y, radius * 2);
  }
}

// methods are jsut functions that inside of classes
