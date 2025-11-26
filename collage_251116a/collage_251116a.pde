import gifAnimation.*;

PImage dome;
PImage Journey;
PImage Moon;
PImage Guardian;
PImage board;
PImage nan;
PImage Amingo;
PImage Skate;
PImage Arizona;
PImage Horse;
PImage Ari;
GifMaker gifExport;
int totalFrames = 120;
void setup() {
  size(700, 700);
  background (#ff00ff);
  imageMode(CENTER);
  dome = loadImage("20250804_002629.jpg");
  Journey = loadImage("20200801_185625(1).png");
  Guardian = loadImage("20251124_063538(1).png");
  nan = loadImage("20251119_054603(1).png");
  board = loadImage("20201110_160811(1).png");
  Moon = loadImage("20230731_210206 (1).png");
  Amingo = loadImage("20251124_005639(1).png");
  Arizona = loadImage("20250516_204935.png"); 
  Horse = loadImage ("20231019_173715(1).png");
  Ari = loadImage ("20240428_184225(1).png");
  gifExport = new
  GifMaker(this,"output.gif",100);
  gifExport.setRepeat(0);
  frameRate(30);
}

void draw() {
  translate(width/2, height/2);
  image(dome, 0, 0, 700, 700);
  scale(0.5);
  translate(504, 193);
  scale(2.0);
  image(Journey, 0, 0, 250, 250); // rabit
  resetMatrix();
  translate(56, 57);
  scale(2.0);
  image(Moon, 0, 0, 50, 50); // moon
  resetMatrix();
  translate(198, 503);
  scale(2.9);
  image(Amingo, 0, 0, 50, 50); // amingo
  resetMatrix();
  translate(399, 81);
  scale(0.1);
  hoverImage(board, 0, 0, 0.07, 50);// board
  resetMatrix();
  translate(77, 341);
  scale(0.05);
  hoverImage(Guardian, 0, 0, 0.03, 250);
  resetMatrix();
  translate(610, 167);
  scale(0.1);
  hoverImage(Arizona, 0, 0, 0.15, 50); // arizona can
  resetMatrix();
  translate(50, 527);
  scale(2.0);
  image(Horse, 0, 0, 45, 54); // horse
  resetMatrix();
  translate(362, 526);
  scale(2.9);
  image(Ari, 0, 0, 50, 50); // Cat
  resetMatrix();
  translate(width/2, height/2);
  rotate(frameCount*0.1);
  image(nan, 0, 0, 150, 150);
  
  if (frameCount < totalFrames){
    gifExport.addFrame();
  } else if (frameCount ==
  totalFrames){
    gifExport.finish();
    println("GIF saved!");
    noLoop();
  }
}

void hoverImage(PImage img, float x, float y, float speed, float h) {
  image(img, x, y + sin(frameCount * speed) * h);
}
