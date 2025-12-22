//class Projectile {
//PVector projectilePos = new PVector (player.position.x,player,position.y);
//PVector projectilePos = new PVector (0, -16);
class Bullet {
  //variables
  float x;
  float y;
  float d;
  float speed;
  //
  // float r =5;
  Bullet( float startX, float startY) {
    x = startX;
    y = startY;

    d=10;

    speed =15;
  }

 void collisionDetection(Enemy e) { 

    // Check distance between player and enemy
    // if dist is less than the sum of the player radius
    // and the enemy radius, collision has occurred
    float distance =  (dist(x, y, e.position.x, e.position.y));
    if (distance < d/2 + e.radius ) {
       //return true; // I hit something
      e.position.x = 5000;
     
    }
   //return false; // I missed
  }
  //collision occurs, move that enemy off screen

  void display() {
    fill(255, 255, 0);
    ellipse(x, y, 10, 10);
    //  ellipse(x, y, r*2, r*2);
  }

  void update() {
    y-=10;
  }
}
