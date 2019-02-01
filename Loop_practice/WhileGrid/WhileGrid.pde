float endX=0;
float endY=0;

void setup(){
  size(960,540);
}

void draw(){
  frameRate(30);
  background(50);
  
float spacing=30;
  
float x=0;//State variable X 
float y=0;//State variable y
  
   stroke(255);
   strokeWeight(2);
   
   x=0;//Initialize x
   while(x<endX){
   line(x,0,x,height);
   x=x+spacing;
   }
   
   y=0;//Initialize y
   while(y<endY){
   line(0,y,width,y);
   y=y+spacing;
   }
   
   endX=endX+1;
   endY=endY+1;
   
}
