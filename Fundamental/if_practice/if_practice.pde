void setup(){
  size(640,360);
}

void draw(){
  background(0);
  
  if (mouseX>200 || mouseX<100){
    background(0,50,0);
    fill(255,0,0);
    rect(300,100,50,50);
  }


}
