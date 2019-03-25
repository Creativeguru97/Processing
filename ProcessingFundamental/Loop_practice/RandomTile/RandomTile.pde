//This is loop within a loop practice.

float x=0;//State variable X 
float y=0;//State variable y

void setup(){
  size(960,540);
}

void draw(){
  //frameRate(120);
  background(50);

   stroke(255);
   strokeWeight(2);
   
   //For every row, for every column, draw a rectangle.
   //Like..
   //y=0
     //x=0
     //x=48
     //X=96
   //y=48
     //x=0
     //x=48
     //x=96
   for (float y=0; y<height; y=y+48){
        for (float x=0; x<width; x=x+48){
          fill(random(0,255),random(0,255),random(0,255));
          rect(x,y,48,48);
     }
   }

}
