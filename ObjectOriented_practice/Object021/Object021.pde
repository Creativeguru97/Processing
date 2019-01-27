Bubble b1;
Bubble b2;

void setup(){
  size(600,400);
b1=new Bubble(100,100,50);
b2=new Bubble(500,200,100);
}

void draw(){
  background(0);
  
  b2.x=mouseX;
  b2.y=mouseY;
  
  b1.display();
  b2.display();

}
