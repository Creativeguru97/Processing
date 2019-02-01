class Particle{

  float x,y;
  float r;
 
  
  //Particle(){
  //  x=random(width);
  //  y=random(height);
  //  r=random(10,40);
  // }

  Particle(float tempX, float tempY, float tempR){
    r=tempR;
    x=tempX;
    y=tempY;
  }
  
  boolean overlaps(Particle other){
    float d=dist(x,y,other.x,other.y);
    if(d<r+other.r){
      return true;
    }else{
      return false;
    }
  }

  void display(){
    stroke(255);
    noFill();
    ellipse(x,y,r*2,r*2);
  }
}
