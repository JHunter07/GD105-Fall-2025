//class Projectile {
//PVector projectilePos = new PVector (player.position.x,player,position.y);
//PVector projectilePos = new PVector (0, -16);
class Bullet {
  float x, y;
  float r =5;
  Bullet(float tx, float ty) {
    x = tx;
    y = ty;
  }

  //this .x = x; this.y = y;}
 // void update() {
 //   y -= 10;
 // }   // move upward


  //  Projectile() {
  //  }
  //void display() {
  //  fill(255, 255, 0);
  //  ellipse(x, y, 10, 10);
    //   noStroke();
    //   fill(255);
    //   circle(projectilePos.x, projectilePos.y, projectileUnit);
    //   fill(0);
    //  circle(projectilePos.x + projectileUnit/4, projectilePos.y + projectileUnit/4, projectileUnit/2);
  }

  void collisionDetection(Enemy e)
  {
    // Check distance between player and enemy
    // if dist is less than the sum of the player radius
    // and the enemy radius, collision has occurred
    float distance =  (dist(x, y, e.position.x, e.position.y));
    if (distance < r + e.radius) {
      return true;
    }
    return false;
  }
  {
    //collision occurs, move that enemy off screen
    e.position.x = 4000;
  }
  void update() {
    y-=10 ;
  }
  void display() {
    fill(255, 255, 0);
    ellipse(x, y, 10, 10);
    ellipse(x, y, r*2, r*2);
  }
  //  void move() {
  //    projectilePos.add(ProjectileVel);
  //  }
  //void collision() {
  ////for (int i = 0; i < projectile.length; i++) {
  //  for (int n = 0; n < opp.length; n++) {
  //if (projectile [i], projectilePos.x + projectileUnit > enemy[n],enemyPos.x &&
  //  projectile[i], projectile.x < enemy[n], enemyPos.x + enemyUnit &&
  //  projectile[i], projectile.y < enemy[n], enemyPos.y + enemyUnit &&
  //projectile[i], projectile.y, + projectileUnit > projectile enemy[n].opp.y) {
  //enemy[n], oppPos.x += width;
  //projectile [i], projectilePos.x -= width * 2;
  //hitNum += 1;
  //break;
  //}
  // }
  // }
  // }

}
}
