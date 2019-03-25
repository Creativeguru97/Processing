float x=0;//State variable X 
float y=0;//State variable y

float spacing;

void setup(){
  size(960,540);
}

void draw(){
  background(50);
  
  spacing=48;
  
   stroke(255);
   strokeWeight(2);
   
   for (float x=0; x<width; x=x+spacing){
     line(x,0,x,height);
   }
   
   
   for (float y=0; y<height; y=y+spacing){
     line(0,y,width,y);
   }
}
