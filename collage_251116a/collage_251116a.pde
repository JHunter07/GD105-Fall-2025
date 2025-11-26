float move;
//float shake;
PImage dome;
PImage Journey;
PImage Moon;
PImage Guardian;
PImage board;
PImage nan;
PImage Amingo;
float g = 0.0;
float inc = TWO_PI/25.0;
float baseX, baseY;
float floatAngle = 0 + 50.00;

void setup(){
 size(700,700);
 background (#ff00ff);
 dome = loadImage("20250804_002629.jpg");
 Journey = loadImage("20200801_185625(1).png");
 Guardian = loadImage("20251124_063538(1).png");
 imageMode(CENTER);
 nan = loadImage("20251119_054603(1).png");
 board = loadImage("20201110_160811(1).png");
 Moon = loadImage("20230731_210206 (1).png");
 Amingo = loadImage("20251124_005639(1).png");
// baseX = width/2;
 //baseY = height/2;

}



  void draw(){
  
  //image(photo2,0,0,600,600);
  translate(width/2,height/2);
  image(dome,0,0,700,700);
  scale(0.5);
  //image(skateboard,0,0,400,400);
 // image(boarder,0,0,400,400);
 translate(504,193);
 scale(2.0);
 image(Journey,0,0,250,250); // rabit
 resetMatrix();
 translate(56,57);
 scale(2.0);
 image(Moon,0,0,50,50); // moon
 resetMatrix();
 translate(198,503);
 scale(2.9);
 image(Amingo,0,0,50,50); // amingo
 resetMatrix();
 translate(399,81);
 scale(2.4);
// image(board,0,0,50,50);
 hovermyimage( 0,0);
 resetMatrix();
 translate(77,341);
 scale(0.05);
// float offsetY= sin(floatAngle)*20;
// float Current = baseY + offsetY;
 
 //(abs(cos(frameCount))*255);
 hovermyimage( 0,0);
 resetMatrix();

 //abs(sin(frameCount*40+60));
   //imageMode(CENTER);
  // translate(385,326);
   translate(width/2,height/2);
   rotate(frameCount*0.1);
 image(nan,0,0,150,150);

}
void hovermyimage (float x, float y)
{
  translate(x,y);
  resetMatrix();
 // image(Guardian,x,cos(frameCount*.03)*height* .45);
  //image(board,x,cos(frameCount*.03)*height* .45);
 // image(Guardian,x,cos(frameCount*.03)*height* .45);
 // resetMatrix();
  // image(board,x,cos(frameCount*.03)*height* .45);
}
