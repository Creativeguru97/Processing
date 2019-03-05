

void setup(){
size(600,400);
background(225);

}

void draw(){

//for(int x = 0; x < width; x++){
//  set(x, Yascend, color(0,255,0));
//}

//check every pixels from left top
//loadPixels();
//  for(int i = 0; i < pixels.length; i++){
//  pixels[i] = color(random(255), 0, random(255));
//  }
//updatePixels();

//loadPixels();
//for(int x = 0; x < width; x++){
//  for(int y = 0; y < height; y++){
//    pixels[x+y*width] = color(255-x/2,y/2,x/3);
//  }
//}
//updatePixels();

loadPixels();
for(int x = 0; x < width; x++){
  for(int y = 0; y < height; y++){
    
    float d = dist(x, y, mouseX, mouseY);
    pixels[x+y*width] = color(255-d);
    //or, int index = x+y*width;
    //pixels[index] = blah;
  }
}
updatePixels();



}
