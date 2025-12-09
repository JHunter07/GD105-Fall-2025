class Player {
  PVector position = new PVector (100, 100);
  boolean up, down, left, right;
  float speed = 10;
  Player() {
  }
  void display() {
    circle (position.x, position.y, 50);
  }

  void movement()
  {
    if (up)
    {position.y-=speed;
    }
    if (left)
    {position.x-=speed;
    }
    if (down)
    {position.y+=speed;
    }
    if (right)
    {position.x+=speed;
    }
  }
}
