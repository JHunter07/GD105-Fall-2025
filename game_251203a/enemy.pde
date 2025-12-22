class Enemy {
  PVector position;
  PVector velocity;
  float speed = 10;
  float radius = 40;
  
  Enemy(PVector pos) {
    position = pos;
    PVector.random2D().mult(3);// random2d() gives the direction while mult() controls the speed
    velocity= PVector.random2D().mult(3);
    
  }
  void display() {
     fill(255,0,0);; // setting background to black
    circle (position.x, position.y, radius * 2);
  }
  void move(){
    position.add(velocity);
    
  //  if(enemyPos.x > width - 100 || enemypos . x < 100){ 
  //    enemyvel.x *=-1;
  //    enemyvel.y += 50;
  //  } else {
  //    oppVel = 0;
      
    
   if(position.x > width - radius){
      velocity.x *= -1; 
    }
    
    if (position.y > height-radius
    || position.y < radius) {
       velocity.y *= -1; 
    }
  }
   // if(enemy vel.x == 1 && hitNum>9) enemy vel. x = 2;
    
 //   if(enemy vel.x == 4 && hitNum>9) enemy vel. x = 2;
 //   if(enemy vel.x == 4 && hitNum>9) enemy vel. x = 2;
    
  //   if(enemy vel.x == 6 && hitNum>9) enemy vel. x = 2;
  //   if(enemy vel.x == 6 && hitNum>9) enemy vel. x = 2;
 //   
   //  if(enemy vel.x == 8 && hitNum>9) enemy vel. x = 2;
   //  if(enemy vel.x == 8 && hitNum>9) enemy vel. x = 2;
     
    //  if(enemyPos.y > height) enemyPOS.y = - 50;
    
    
}

// methods are jsut functions that inside of classes
