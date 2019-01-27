Particle p1;
Particle p2;
//Particle p3;

void setup(){
  size(600,400);
  p1=new Particle(100,100,50);
  p2=new Particle(500,200,100);
  //p3=new Particle();
}

void draw(){
  background(0);
  
  //float d = dist(p1.x,p1.y,p2.x,p2.y);
  //if(d<p1.r+p2.r){
  //  background(0,0,127);
  //}
  
  if(p1.overlaps(p2)){
    //overlaps at here is function
    background(0,0,127);
  }
  
  p2.x=mouseX;
  p2.y=mouseY;
  
  p1.display();
  p2.display();
  //p3.display();
}
