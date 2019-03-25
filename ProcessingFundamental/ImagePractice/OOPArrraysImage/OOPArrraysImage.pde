PImage[] flowers = new PImage[3];
Bubble[] bubbles = new Bubble[5];
//Means, I will have an integer array called "bubbles" and there I'll create two of that.

boolean going=false;

void setup(){
  size(960,480);
  for(int i=0; i<flowers.length; i++){
    flowers[i] = loadImage("flower"+i+".png");
  }
  for(int i=0; i<bubbles.length; i++){
    int index = int(random(0,flowers.length));// Fix float random to int
    bubbles[i] = new Bubble(flowers[index],random(30,60));
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
