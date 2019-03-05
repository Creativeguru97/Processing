//Bubble b1;
//Bubble b2;
Bubble[] bubbles = new Bubble[2];
//Means, I will have an integer array called "bubbles" and there I'll create two of that.

boolean going=false;

void setup(){
  size(960,480);
//b1=new Bubble(width/2,200,64);//b is a new object name "bubble".
//b2=new Bubble(width/2,300,32);
//This is where objet is born.

  bubbles[0] = new Bubble(width/2,300,64);
  bubbles[1] = new Bubble(width/2,400,32);
}

void draw(){
  background(255);
  bubbles[0].display();//Call each object through dot syntax
  if(going){
  bubbles[0].ascend();
  }
  bubbles[0].top();
  
  bubbles[1].display();
  if(going){
  bubbles[1].ascend();
  }
  bubbles[1].top();
}

void mousePressed(){
  bubbles[1].pop();
  //b2.pop();
}
