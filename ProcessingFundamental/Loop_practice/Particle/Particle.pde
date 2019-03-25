float x=0;

void setup(){
  size(960,540);
}

void draw(){
  background(200);
  
  x=0;//Initialize x value.
  while(x<width){
    if(mouseX<1){
      x=x+1;
    }else{
    x=x+mouseX;//Incrementation operation
    }
  fill(101);
  stroke(255);
  ellipse(x,200,50,50);
  }
  
  //while
  
}
