class Player {
  PVector position = new PVector (100, 100);
  boolean up, down, left, right;
  float speed = 5;
  float radius = 25;
  Player() {
  }
  void display() {
    background(0); // setting background to black
    circle (position.x, position.y, radius * 2);
  }
  void movement()
  {
    if (up)
    {
      position.y-=speed;
    }
    if (left)
    {
      position.x-=speed;
    }
    if (down)
    {
      position.y+=speed;
    }
    if (right)
    {
      position.x+=speed;
    }
  }

  // Passing e as a parameter means it is looking
  // for an Enemy object
 // void collisionDetection(Enemy e)
  {
    // Check distance between player and enemy
    // if dist is less than the sum of the player radius
    // and the enemy radius, collision has occurred
   if (dist(position.x, position.y, e.position.x, e.position.y) < radius + e.radius)
 //   {
      // if collision occurs, move that enemy off screen
      e.position.x = 5000;
    }
  }


// methods are just functions that inside of classes
