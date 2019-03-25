class Bubble{

  float x,y;
  float r;
  color col;

  //Bubble(){
  //  x=random(width);
  //  y=random(height);
  //  r=random(10,40);
  //  col = color(0);
  // }
   
  Bubble(float XPosition, float YPosition, float R){
    r=R;
    x=XPosition;
    y=YPosition;
  }
  
  void overlaps(Bubble other){
    float d=dist(x,y,other.x,other.y);
    if(d<r+other.r){
      col = color(0,255,0,255);
      other.col = color(255,0,0,255);
    }else{
      col = color(0);
      other.col = color(0);
    }
  }

  void display(){
    stroke(255);
    fill(col);
    ellipse(x,y,r*2,r*2);
  }
}
