//PVector gameState;
Player player;
float gameState = 0;
void setup() {
  size(700, 700);
  background(255);
  player = new Player();
  gameState = 0;
}

void draw () {
  player.display();
  player.movement();
}

void keyPressed() {

  if (key == 'w')
  {
    player.up=true;
  }
  if (key == 'a')
  {
    player.left=true;
  }
  if (key == 's')
  {
    player.down=true;
  }
  if (key == 'd')
  {
    player.right=true;
  }
  if (key == 'p')
  {
    //p == gameState 1;
  }
}

void keyReleased() {
  if (key == 'w')
  {
    player.up=false;
  }
  if (key == 'a')
  {
    player.left=false;
  }
  if (key == 's')
  {
    player.down=false;
  }
  if (key == 'd')
  {
    player.right=false;
  }
  if (gameState == 0) {
  }else{
    gameState = 1;
  }
 if
 (gameState == 0);
 println("TITLE");{
 }else{
 
}
