GameState mode = GameState.TITLE;
boolean start;
boolean shoot;
//Projectile []  projectile = new Projectile[1];
//float projectileUnit = 10;
ArrayList <Bullet> bulletList;
//float px = 200;
//float py=350;
Player player;
public enum GameState {
  TITLE, GAME, GAMEOVER
}
//PVector GameState;

// [] means I'm creating an array
// I now have an array of 10 enemies
Enemy [] enemy = new Enemy[10];
//GameState mode = GameState;
//String gameState = game ;
void setup() {
  size(700, 700);
  background(255);
  player = new Player();

  // For loop is used to cycle through the array of enemies
  for (int i = 0; i < enemy.length; i++)
  {
    enemy[i] = new Enemy(new PVector (random(1, 700), random(1, 700)));
  }
  start =true;
  bulletList = new ArrayList<Bullet>();
}

void draw () {
  switch(mode) {
  case TITLE:
    if (start == true) {
      TitleScreen();
    }
    //fuction(); // whatever you want to happen first
    break;
  case GAME:

    background(0);
    player.display();
    player.movement();
    for (int i = bulletList.size()
      -1; i >= 0; i--) {
      Bullet b = bulletList.get(i);
      b.update(); // Moves the bullet
      b.display(); // draws the bullet
      if (b.y<0) {
        bulletList.remove(i);
      }
    }
    // Display all enemies in array with loop

    for (int i = 0; i < enemy.length; i++)
    {
      enemy[i].move();
      enemy[i].display();
      // Check for collision with all enemies in array
      for (Bullet b : bulletList) {
        b.collisionDetection(enemy[i]);
      }
      float d = dist(player.position.x,
        player.position.y,
        enemy[i].position.x,
        enemy[i].position.y);
      if (d < player.radius +
        enemy[i].radius) {
        mode=GameState.GAMEOVER;
        break;
      }
      
    }
    break; // executes and jumps to the next statement after
    //function(); // second scene that you want to happen
  case GAMEOVER:
    GameOver();
    break;
  default:
    mode = GameState.TITLE;
  }
  //println(mode);

  //println("DAFDSAF");
}

void keyPressed() {


  //if in title screen and space pressed, start game
  if (key ==' ' && mode == GameState.TITLE) {
    start =false;
    mode = GameState.GAME;
  }
  //if O key pressed in game, game over
  if (key == 'o' && mode == GameState.GAME) {
    mode = GameState.GAMEOVER;
  }
  // if space is pressed and game over, go to title
  if (key == ' ' && mode == GameState.GAMEOVER) {
    resetGame();
    start =true;
    mode = GameState.TITLE;
  }
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

  if (key == ' ') {
    shoot = true;
    bulletList.add(new
      Bullet(player.position.x, player.position.y));
    //Projectile a = new projectile();
    //projectile = (Projectile []) append ( projectile, a);
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
  {
    if ( key == ' ')
      shoot = false;
  }
}
void TitleScreen() {
  background(0);
  fill(0,255,0);
  textSize(60);
  text ("survival shoot", width/2 - 100, height/2);
}

void GameOver() {
  background(0);
  fill(255,0,0);
  textSize(40);
  text ("Game Over", width/2 - 100, height/2);
}
void resetGame() {
  player.position.set(width/2,height/2);
  bulletList.clear();
  for (int i = 0; i < enemy.length;
    i++) {
  }
  void win(){
  if (hitNum ==40){
    noLoop();
    fill(0,0,255);
    textSize(40);
    text ( "you win!!!",width/2,height/2);
  }
  
  
  
    
  
  
  }
}
