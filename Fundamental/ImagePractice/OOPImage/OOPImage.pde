PImage flower01;
PImage flower02;

Bubble b1;
Bubble b2;
boolean going=false;

void setup(){
  size(960,480);
  flower01 = loadImage("flower01.png");
  flower02 = loadImage("flower02.png");
  b1=new Bubble(width/2,200,64);//b is a new object name "bubble".
  b2=new Bubble(width/2,300,32);
  //This is where objet is born.
}

void draw(){
  background(255);
  //imageMode(CENTER);
  //image(flower01, width/2,height/2);
  //image(flower02, width/2,height/2);
  b1.display();//Call each object through dot syntax
  if(going){
  b1.ascend();
  }
  b1.top();
  
  b2.display();
  if(going){
  b2.ascend();
  }
  b2.top();
}

void mousePressed(){
  b1.pop();
  //b2.pop();
}
