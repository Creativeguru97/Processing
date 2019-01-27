class Bubble{

  float x,y;
  float r;

  Bubble(float XPosition, float YPosition, float R){
    r=R;
    x=XPosition;
    y=YPosition;
  }

  void display(){
    stroke(0);
    fill(127);
    ellipse(x,y,r,r);
  }
}
