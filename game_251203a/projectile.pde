//class Projectile {
//PVector projectilePos = new PVector (player.position.x,player,position.y);
//PVector projectilePos = new PVector (0, -16);
class Bullet {
  //variables
  int x;
  int y;
  int d;
  int speed;
  //
 // float x,y;
 // float r =5;
  Bullet(int startPosX, int startPosY) {
    x = startPosX;
    y = startPosY;

    d=10;

    speed =15;
  }
  void display() {
    circle(x, y, d);
  }

  void move() {
    y-=speed; // saying y equals itself minus speed (y=y-speed)
  }
  //this .x = x; this.y = y;}
  // void update() {
  //   y -= 10;
  // }   // move upward


  //  Projectile() {
  //  }
  // void update() {y-=10;}
  //  void display() {
  //    fill(255, 255, 0);
  //  ellipse(x, y, 10, 10);
  //  ellipse(x, y, r*2, r*2);
  //  fill(255, 255, 0);
  //  ellipse(x, y, 10, 10);
  //   noStroke();
  //   fill(255);
  //   circle(projectilePos.x, projectilePos.y, projectileUnit);
  //   fill(0);
  //  circle(projectilePos.x + projectileUnit/4, projectilePos.y + projectileUnit/4, projectileUnit/2);
  //  }

  // void collisionDetection(Enemy e)
  // {
  // Check distance between player and enemy
  // if dist is less than the sum of the player radius
  // and the enemy radius, collision has occurred
  // float distance =  (dist(x,y,e.position.x, e.position.y));
  //  if (distance < r + e.radius) {
  //   return true;
  // }
  //   return false;
  // }



  //collision occurs, move that enemy off screen


  //void update() {y-=10;}
  //void display(){
  //   fill(255, 255, 0);
  //  ellipse(x, y, 10, 10);
  //  ellipse(x, y, r*2, r*2);
  // }

  //}
}
