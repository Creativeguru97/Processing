import peasy.*;
//PeasyCam make everything relative to the center !!!

ArrayList<Firework> fireworks;

PVector gravity = new PVector(0, 0.2);

PeasyCam cam;

void setup() {
  fullScreen(P3D);
  //size(960, 540, P3D);
  
  //Look at it from 500 pixels away
  cam = new PeasyCam(this, 500);
  fireworks = new ArrayList<Firework>();
  colorMode(HSB);
  background(0);
}

void draw() {
  if (random(1) < 0.5) {
    fireworks.add(new Firework());
  }
  //fill(0, 50);
  //noStroke();
  //rect(0,0,width,height);
  background(0, 20);

  
  for (int i = fireworks.size()-1; i >= 0; i--) {
    Firework f = fireworks.get(i);
    f.run();
    if (f.done()) {
      fireworks.remove(i);
    }
  }
  
  
  
}
