GameState mode = GameState.TITLE;
boolean start;

public enum GameState {
  TITLE, GAME, GAMEOVER
}
//PVector GameState;
Player player;
//GameState mode = GameState;
//String gameState = game ;
void setup() {
  size(700, 700);
  background(255);
  player = new Player();
  start =true;
  //gameState = 0;
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
    player.display();
    player.movement();
    //function(); // second scene that you want to happen
    break;
  case GAMEOVER:
    GameOver();
    break;
  default:
    mode = GameState.TITLE;
  }
  println(mode);

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
}
void TitleScreen() {
  background(0);
  fill(255);
  textSize(40);
  text ("Insert Game \n Title here", width/2 - 100, height/2);
}

void GameOver() {
  background(0);
  fill(255);
  textSize(40);
  text ("Game Over", width/2 - 100, height/2);
}
