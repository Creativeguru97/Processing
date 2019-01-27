//This is how control "Bubble"
Bubble b1;
Bubble b2;
boolean going=false;

void setup(){
  size(960,480);
b1=new Bubble(width/2,200,64);//b is a new object name "bubble".
b2=new Bubble(width/2,300,32);
//This is where objet is born.
}

void draw(){
  background(255);
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
