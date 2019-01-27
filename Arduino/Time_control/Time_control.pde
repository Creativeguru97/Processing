float fillColor1=255;
float time=0;
boolean OnOff=false;

void setup(){
  size(960,480);
}

void draw(){
  frameRate(60);
  background(255,255,255);
  fill(fillColor1,0,0);
  rect(100,100,200,200);
  
  if(OnOff){
  if(time<300){
    time++;
    fillColor1=0;
  }else{
    OnOff=!OnOff;
  }
  
  if(!OnOff){
    fillColor1=255;
    time=0;
  }
}
}

void mousePressed(){
  OnOff=!OnOff;  
}
