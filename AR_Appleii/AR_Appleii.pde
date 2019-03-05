import processing.video.*;
import jp.nyatla.nyar4psg.*;
//import jp.nyatla.nyar4psg.utils.*;

Capture video;
MultiMarker mm;
PShape Appleii;
float rotateValue = 0.0;

void setup(){
  size(640, 480, P3D);
  //printArray(Capture.list());
  
  String[] cameras = Capture.list();
  video = new Capture(this, cameras[4]);
  video.start();//Start capturing (access to the camera at this point)
  
  //Set up the NyARToolkit
  mm = new MultiMarker(this, width, height, "camera_para.dat", NyAR4PsgConfig.CONFIG_PSG);
  mm.addNyIdMarker(0, 80);
  
  Appleii = loadShape("Appleii.obj");//Set obj model to PShape
  
}

void draw(){
  if(video.available()){
    video.read();
  }else{       
    return;                             
  }

  //Initiate Augmented process
  
  mm.detect(video); //Find certain marker in captured image
  mm.drawBackground(video);//Set captured image to window's background
  if(mm.isExist(0) == false) {       
    return;                          
  }
  
  mm.beginTransform(0); //Projection model's coordinate based on marker's location
    lights();
    scale(30);
    translate(0, 0, -1);
    rotateX(PI/2);
    rotateY(rotateValue);
    shape(Appleii);
  mm.endTransform();
  
  //End Augmented process
  
  rotateValue += 0.05;

  
  //background(0);
  //image(video,0,0);
}
