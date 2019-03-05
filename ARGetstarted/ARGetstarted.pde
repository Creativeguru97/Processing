import processing.video.*;
import jp.nyatla.nyar4psg.*;
//import jp.nyatla.nyar4psg.utils.*;

Capture video;
MultiMarker mm;

float rotateValue = 0.0;
float hueValue = 0.0;
float hueValueDis = 1.0;

void setup(){
  size(640, 480, P3D);
  //printArray(Capture.list());
  
  String[] cameras = Capture.list();
  video = new Capture(this,640,480);
  video.start();//Start capturing (access to the camera at this point)
  
  //Set up the NyARToolkit
  mm = new MultiMarker(this, width, height, "camera_para.dat", NyAR4PsgConfig.CONFIG_PSG);
  mm.addNyIdMarker(0, 80);
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
  translate(0, 0, 40);//Adjust origin point to make box appear "on the paper"
  colorMode(HSB);
  fill(hueValue, 255, 255, 127);
  rotateZ(radians(rotateValue));
  box(80);
  mm.endTransform();
  
  //ENd Augmented process
  
  rotateValue += 2.0;
  hueValue += hueValueDis;
  
  if(hueValue >= 255.0){
    hueValue = 255.0;
    hueValueDis -= 1.0;
  }else if(hueValue <= 0.0){
    hueValue = 0.0;
    hueValueDis += 1.0;
  }
  
  //background(0);
  //image(video,0,0);
}
