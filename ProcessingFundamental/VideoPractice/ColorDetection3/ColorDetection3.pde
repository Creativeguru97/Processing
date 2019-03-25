//Check distance between particular dot from most closest edge of the blob area
//If the distance is smaller than certain amount, the dot going to be a new part of the area

import processing.video.*;
Capture video;

color trackColor;
float threshold = 12;
float distThreshold = 20;

ArrayList<Blob> blobs = new ArrayList<Blob>();

void setup(){
  size(640,360);
  video = new Capture(this,Capture.list()[3]);
  video.start();
  trackColor = color(255,0,0);
}

void captureEvent(Capture video){
  video.read();
}

void keyPressed(){
  if (key == 'w'){
    threshold++;
  }else if(key == 's'){
    threshold--;
  }else if(key == 'q'){
    distThreshold++;
  }else if(key == 'a'){
    distThreshold--;
  }
  println(threshold);
  println(distThreshold);
}

void draw(){
  video.loadPixels();
  image(video,0,0);
  
  //Check the blobs on the moment time to time
  blobs.clear();
  
  //threshold = map(mouseX,0,width,0,100);
  //threshold = 12;
  //println(threshold);
  //distThreshold = map(mouseY,0,height,0,100);
  //distThreshold = 20;
  //println(distThreshold);
  
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
        
        boolean found = false;
        for(Blob b : blobs){
          //If blob is near this particular x and y
          if(b.isNear(x,y)){
            b.add(x,y);
            found = true;
            break;
          }
        }
        if(!found){
          Blob b = new Blob(x,y);
          //Add a new object to Array list
          blobs.add(b);
        }
      }
    }
  }
  
  for (Blob b:blobs){
    //We show the blob only when the blob's area is greater than certain value
    if(b.size() > 500){
    b.show();
    //println(b.size());
    }
  }
}


float distSq(float x1, float y1, float x2, float y2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1);
  return d;
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
