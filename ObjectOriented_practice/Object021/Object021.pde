Bubble b1;
Bubble b2;
Bubble b3;

void setup(){
  size(600,400);
b1=new Bubble(100,100,50);
b2=new Bubble(500,200,100);
b3=new Bubble(300,400,40);
}

void draw(){
  background(0);
  
  b1.overlaps(b2);
  //b1.overlaps(b2);
  
  b1.x=mouseX;
  b1.y=mouseY;
  
  b1.display();
  b2.display();
  b3.display();

}
