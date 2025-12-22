class Enemy {
  PVector position;
  PVector velocity;
  float speed = 10;
  float radius = 40;

  Enemy(PVector pos) {
    position = pos;
    PVector.random2D().mult(3);// random2d() gives the direction while mult() controls the speed
    velocity= PVector.random2D().mult(3);
  }
  void display() {
    fill(255, 0, 0);
    ; // setting background to black
    circle (position.x, position.y, radius * 2);
  }
  void move() {
    position.add(velocity);

    //  if(enemyPos.x > width - 100 || enemypos . x < 100){
    //    enemyvel.x *=-1;
    //    enemyvel.y += 50;
    //  } else {
    //    oppVel = 0;


    if (position.x > width - radius // left and right wall collision
      || position.x < radius) {
      velocity.x *= 2;
    }

    if (position.y > height - radius||// top and bottom // wall collision
      position.y < radius) {
      velocity.y *= 2;
    }
  }

  void collisionDetection(Player p) {

    // Check distance between player and enemy
    // if dist is less than the sum of the player radius
    // and the enemy radius, collision has occurred
    float distance =  (dist(position .x, position.y, p.position.x, p.position.y));
    float Collide = radius + p.radius;
    if (distance < Collide) {
      //return true; // I hit something
      position.x = 5000;
    }
  }
  
  }

  // methods are jsut functions that inside of classes
