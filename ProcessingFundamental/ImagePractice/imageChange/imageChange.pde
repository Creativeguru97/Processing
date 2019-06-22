PImage Kazu;

void setup(){
  size(375,375);
  Kazu = loadImage("Kazu.PNG");
  
}

void draw(){
  image(Kazu, 0, 0, 375, 375);
}
