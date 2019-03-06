import processing.video.*;
import jp.nyatla.nyar4psg.*;
//import jp.nyatla.nyar4psg.utils.*;

Capture video;
MultiMarker mm;

Planet Earth;

void setup(){
  size(640, 480, P3D);
  blendMode(NORMAL);
  //printArray(Capture.list());  
  String[] cameras = Capture.list();
  video = new Capture(this, cameras[4]);
  video.start();//Start capturing (access to the camera at this point)
  
  //Set up the NyARToolkit
  mm = new MultiMarker(this, width, height, "camera_para.dat", NyAR4PsgConfig.CONFIG_PSG);
  mm.addNyIdMarker(0, 80);
  mm.addNyIdMarker(1, 80);
  
  Earth = new Planet();
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
  if(mm.isExist(0) == false || mm.isExist(1) == false) {       
    return;                          
  }
  mm.beginTransform(0); //Projection model's coordinate based on marker's location
    Earth.display();
    Earth.rotation();
  mm.endTransform();
  
  mm.beginTransform(1); //Projection model's coordinate based on marker's location
    Earth.Hud();
  mm.endTransform();
  
  //End Augmented process
    blendMode(NORMAL);
}
