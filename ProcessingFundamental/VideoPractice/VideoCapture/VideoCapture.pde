//Capture object is for live video from some camera coneected to the computer
//Movie object is for video file
//Both can use as PImage 
//All the same operation with image 

import processing.video.*;
Capture video;

//video = new Captute(this, w, h, fps etc..);
//this means this processing itself. Its came from Java syntax. 
/*It says, "Hey camera!! You gonna have new images available 
and I want you to give those images to me" 
... OK, but Who's me? : This particular skecth  */

void setup(){
  size(640,480);
  
  //printArray(Capture.list());
  //Check capture resolution and fps option on console
  
  video = new Capture(this,640,480);
  video.start();//Start capturing (access to the camera at this point)
}


//void mousePressed(){
//  video.read();
//  //Works like take a snap shot when I click the screen
//}
void captureEvent(Capture video){
  video.read();
  /*For begin, draw class draw 60fps, but web cam is 30fps.
  because of that,weird things going on. So we set the timing processing read 
  and draw, only receive signal from the camera.*/
}


void draw(){
  //Altanative way to set the timing
  //if(video.available()){
  //  video.read();
  //}
  
  background(0);
  image(video,0,0);
}
