void setup(){
  size(555,360);
}

void draw(){
  background(255, 0, 0);
  
  if (mouseX>200 || mouseX<100){
    background(0,50,0);
    fill(255,0,0);
    stroke(255,255,255);
    strokeWeight(10);
    rect(300,100,100,50);
  }


}

//RGB(255, 255, 255)
