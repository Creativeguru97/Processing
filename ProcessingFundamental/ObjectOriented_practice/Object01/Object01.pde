float x=100;
float y=100;

 float color1;
 float color2;
 float color3;
 float color4;
 float color5;
 float color6;

void setup(){
  size(960,480);
}

void draw(){
  background(255);
  //Mozulality and Reusability.
  star(random(0,960),random(0,480));
  star(random(0,960),random(0,480));
}


void star(float x,float y){
  color1=random(0,255);
  color2=random(0,255);
  color3=random(0,255);
  color4=random(0,255);
  color5=random(0,255);
  color6=random(0,255);

  
  fill(color1,color2,color3);
  stroke(color4,color5,color6);
  strokeWeight(6);
  
  beginShape();
  vertex(x,y-50);
  vertex(x+14,y-20);
  vertex(x+47,y-15);
  vertex(x+23,y+7);
  vertex(x+29,y+40);
  vertex(x,y+25);
  vertex(x-29,y+40);
  vertex(x-23,y+7);
  vertex(x-47,y-15);
  vertex(x-14,y-20);
  endShape(CLOSE);
}
