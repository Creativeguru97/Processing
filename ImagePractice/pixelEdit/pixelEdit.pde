PImage Kazu;

void setup(){
size(750,750);
Kazu = loadImage("Kazu.PNG");

}

void draw(){
  //image(Kazu,0,0);
  
  //Go to the Kazu.PNG, give me the pixel from that location 
  //and take that pixel and put it into the screen at the same location
  loadPixels();
  Kazu.loadPixels();
  for(int x = 0; x < width-1; x++){
    for(int y = 0; y < height; y++){
      
      //Edge detection
      //We compare brightness of each pixel with neighbor and output difference.
      int pix1 = x+y*width;
      int pix2 = (x+1)+y*width;
      float B1 = brightness(Kazu.pixels[pix1]);
      float B2 = brightness(Kazu.pixels[pix2]);
      //if the difference is bigger, get the pixel more brighter.
      float diff = abs(B1-B2);
      //pixels[pix1] = color(diff);
      
      //manipulate drawing edge
      if (diff > 18){
        pixels[pix1] = color(0);
      }else{
        pixels[pix1] = color(255);
      }
      
      //int pix = x+y*width;
      
      //float r = red(Kazu.pixels[pix]);
      //float g = green(Kazu.pixels[pix]);
      //float b = blue(Kazu.pixels[pix]);
      //pixels[pix] = color(r,g,b);
      
      //Instead of "pixels[pix] = Kazu.pixels[pix]/2;"
      //We load each color of every pixel and make it togather.
      
      //or we can play like...
      //if(x<375){
      //  pixels[pix] = color(r,g,b*2);
      //}else{
      //  pixels[pix] = color(r,g,b);
      //}
      
      //Flash light effect
      //float d = dist(mouseX, mouseY, x, y);
      //float factor = map(d, 0, 200, 2, 0);
      //pixels[pix] = color(r*factor,g*factor,b*factor);
      
      //Threshhold black & white
      //float B = brightness(Kazu.pixels[pix]);
      //if(B > mouseX){
      //  pixels[pix] = color(255);
      //}else{
      //  pixels[pix] = color(0);
      //}
    }
  }
  updatePixels();



}
