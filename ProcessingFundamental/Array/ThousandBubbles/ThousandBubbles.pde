Bubble[] bubbles = new Bubble[20];
//Means, I will have an integer array called "bubbles" and there I'll create two of that.

boolean going=false;



void setup(){
  size(960,480);
  for(int i=0; i<bubbles.length; i++){
  bubbles[i] = new Bubble(random(30,60), random(255),random(255),random(255));
  }
}

void draw(){
  frameRate(30);
  background(255);
   
  for(int i=0; i<bubbles.length; i++){
    bubbles[i].display();//Call each object through dot syntax
    if(going){
      bubbles[i].ascend();
    }
    bubbles[i].top();
  }
  
}
  
  


void mousePressed(){
  going=!going;
}
