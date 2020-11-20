import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;

Capture video;
OpenCV opencv;

//Rectangle[] faces;
//Rectangle[] eyes;
Rectangle[] ears;
 
void setup(){
  size(640, 480);
  
  //printArray(Capture.list());
  
  video = new Capture(this,640,480);
  video.start();
}

void draw(){
  if(video.available() == true){
    video.read();
    
    image(video, 0, 0);
    
    opencv = new OpenCV(this, video);
    //opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
    //faces = opencv.detect();
    
    //opencv.loadCascade(OpenCV.CASCADE_EYE);
    //eyes = opencv.detect();
    
    opencv.loadCascade(OpenCV.CASCADE_EYE);
    ears = opencv.detect();
    
    //println(faces);
    //println(eyes);
    
    //for(int i=0; i<faces.length; i++){
    //  stroke(255);
    //  noFill();
    //  rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    //}
    
    //for(int i=0; i<eyes.length; i++){
    //  stroke(255);
    //  noFill();
    //  ellipse(eyes[i].x + eyes[i].width / 2, eyes[i].y + eyes[i].height / 2, 40, 40);
    //}
    
    for(int i=0; i<ears.length; i++){
      stroke(255);
      noFill();
      ellipse(ears[i].x + ears[i].width / 2, ears[i].y + ears[i].height / 2, 40, 40);
    }
    
    //if(eyes.length > 2){
    //  float distance = dist(eyes[0].x, eyes[0].y, eyes[1].x, eyes[1].y);
    //  println(distance);
    //}
    
    if(eyes.length > 2){
      text();
    }
    
  }
}
