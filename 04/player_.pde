class Player {
  PVector position;
  boolean up, down, left, right;
  float speed = 5;
  float radius = 25;
  int x;
  int y;
  int r;
  int hitNum =0;
  Player() {
    position = new PVector(350, 350);
    // x = playerPosX;
    // y = playerPosY;
    // r = playerPosR;
  }
  void display() {
    // background(0); // setting background to black
    //circle (position.x, position.y, radius * 2);
    fill(0, 255, 0);
    circle(position.x, position.y, radius*2);
  }
  void movement()
  {
    if (up && position.y > radius)
    {
      position.y-=speed;
    }
    if (left && position.x > radius)
    {
      position.x-=speed;
    }
    if (down && position.y < height-radius)
    {
      position.y+=speed;
    }
    if (right && position.x < width-radius)
    {
      position.x+=speed;
    }
  }

  // Passing e as a parameter means it is looking
  // for an Enemy object
  // void collisionDetection(Enemy e)
  // {
  //Check distance between player and enemy
  // if dist is less than the sum of the player radius
  // and the enemy radius, collision has occurred
  // if (dist(position.x, position.y, e.position.x, e.position.y) < radius + e.radius)
  //   {
  // if collision occurs, move that enemy off screen
  // e.position.x = 5000;
  // }
}

//void playerScreenCollision() {
//  if (player.x > width-radius) {
//  player.x = width-radius;
//velocity.x *= -1;
//  } else if (player.x < radius) {
//      player.x = radius;
//    velocity.x *= -1;
//    } else if (player.y > height-radius) {
//    player.y = height-radius;
//    velocity.y *= -1;
//   } else if (player.y < radius) {
//   player.y = radius;
//    velocity.y *= -1;
//}

// methods are just functions that inside of classes
