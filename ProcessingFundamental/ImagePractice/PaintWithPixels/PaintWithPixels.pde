PImage Kazu;

void setup(){
size(750,750);
Kazu = loadImage("Kazu.PNG");
background(0);
}

void draw(){
  //background(0);
  //image(Kazu,0,0);
  
  for(int i =0; i < 500; i++){
    float x = random(width);
    float y = random(height);
    color col = Kazu.get(int(x),int(y)); //Take color from the image
    fill(col);
    noStroke();
    ellipse(x,y,4,4);
  }
  
}
