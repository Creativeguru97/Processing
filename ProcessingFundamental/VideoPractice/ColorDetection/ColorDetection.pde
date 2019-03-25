import processing.video.*;
Capture video;

color trackColor;
float threshold = 25;

void setup(){
  size(640,360);
  video = new Capture(this,Capture.list()[3]);
  video.start();
  trackColor = color(255,0,0);
}

void captureEvent(Capture video){
  video.read();
}

void draw(){
  video.loadPixels();
  image(video,0,0);
  
  threshold = map(mouseX,0,width,0,100);
  //threshold = 80;
  println(threshold);
  
  float avgX = 0;
  float avgY = 0;
  
  int count = 0;
  
  for (int x = 0; x < video.width; x++){
    for (int y = 0; y < video.height; y++){
      int loc = x + y * video.width;
      
      color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);
      
      float d = distSq(r1,g1,b1,r2,g2,b2);
      
      /*more threshold is bigger, detection area gonna spread
      which is inaccurate*/
      if(d < threshold*threshold){
        //Colorize every pixel of the area which "d" is smaller than "threshold".
        stroke(255);
        point(x,y);
        avgX +=x;
        avgY +=y;
        count++;
      }
      
    }
  }
  
  if (count > 0){
    avgX = avgX/count;
    avgY = avgY/count;
  fill(trackColor);
  strokeWeight(4.0);
  stroke(0);
  ellipse(avgX,avgY,24,24);
  }
}

//Because distance function uses "square root"
float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
  return d;
}

void mousePressed() {
  // Save color where the mouse is clicked in trackColor variable
  int loc = mouseX + mouseY*video.width;
  trackColor = video.pixels[loc];
}
