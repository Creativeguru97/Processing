Ball[] balls;

boolean Rec = false;

void setup(){
  size(960,540);
  balls = new Ball[5];
  for(int i=0; i<balls.length; i++){
    balls[i] = new Ball();
  }
}

void draw(){
  background(255);
  
  /*Enhanced loop!!!
  For every Ball b in the array balls, do this to it*/
  for(Ball b : balls){
  PVector gravity = new PVector(0,0.3);
  gravity.mult(b.mass);
  //Apply to PVector object "gravity"
  b.applyGravity(gravity);
  
  if(mousePressed){
    PVector wind = new PVector(0.1,0);
    b.applyGravity(wind);
  }
  
  //By this "get()", we gain the value's copy without messing it.
  PVector friction = b.velocity.get();
  friction.normalize();
  //or, just like "float c = -0.01;"
  friction.mult(-1);
  float c = 0.02;
  friction.mult(c);
  b.applyGravity(friction);
  
  b.displayBalls();
  b.moveBalls();
  b.checkBalls();
  }
  
  if(Rec){
    //Only capture velements written above saveFrame
    saveFrame("Output/Ball_####.png");
    fill(255,0,0);
  }else{
    fill(0,255,0);
  }
  ellipse(width/2, height-50, 20, 20);
}

void keyPressed(){
  if(key == 'r'){
    Rec = !Rec;
  }
}
