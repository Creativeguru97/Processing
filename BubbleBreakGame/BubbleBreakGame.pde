import org.openkinect.processing.*;

Kinect2 kinect;

float minThresh;
float maxThresh;

PImage img;

float ColiPixX;
float ColiPixY;

Bubble[] bubbles = new Bubble[20];
//Means, I will have an integer array called "bubbles" and there I'll create two of that.

//float BubbleDiameter;
float BubbleX;
float BubbleY;

int leftChances = 100;

//float EachD;

boolean going=false;

void setup(){
  size(512,424);
  
  for(int i=0; i<bubbles.length; i++){
  bubbles[i] = new Bubble(random(30,60), random(255),random(255),random(255));
  }
  
  kinect = new Kinect2(this);
  kinect.initDepth();
  //kinect.enablePointCloud(true);
  kinect.initDevice();
  img = createImage(kinect.depthWidth, kinect.depthHeight,RGB);
  
}

void draw(){
  frameRate(30);
  
  
  img.loadPixels();
  image(img, 0, 0);
  
  minThresh = 700;
  maxThresh = 1200;
  
  //Get the raw depth 0-4500 as array of integers
  int[] depth = kinect.getRawDepth();
  
  //int record = 4500;
  //int rx = 0;
  //int ry = 0; 
  
  float sumX = 0;
  float sumY = 0;
  float totalPixels = 0;
  
  for(int x = 0; x < kinect.depthWidth; x++){
    for(int y = 0; y < kinect.depthHeight; y++){
      int offset = x + y * kinect.depthWidth;//A paticular pixel
      int d = depth[offset];
      
      if(d > minThresh && d < maxThresh){
        img.pixels[offset] = color(137, 195, 235);
        
        //Watch every pixel to find out which are meets this if statement
        sumX += x;
        sumY += y;
        totalPixels++;
        //ColiPixX = x;
        //ColiPixY = y;
        
        
        //Find closest pixel
        //if (d < record){
        //  record = d;
        //  rx = x;
        //  ry = y;
        //}
        
      }else{
        img.pixels[offset] = color(255);
      }
      
     
    }
  }
  
  
  
  //img.updatePixels();
  //image(img, 0, 0);
  
  float avgX = sumX / totalPixels;
  float avgY = sumY / totalPixels;
  fill(112,88,163);
  stroke(231, 96, 158);
  strokeWeight(4);
  ellipse(avgX, avgY, 30, 30);
  
  //Closest point indication
  //ellipse(rx, ry, 64, 64);
  
  for(int i=0; i<bubbles.length; i++){
    bubbles[i].display();//Call each object through dot syntax
    if(going){
      bubbles[i].ascend();
    }
    bubbles[i].ground();
    bubbles[i].touch();
    //line(BubbleX, BubbleY, avgX, avgY);
  }
  
  ColiPixX = avgX;
  ColiPixY = avgY;
  //ColiPixX = rx;
  //ColiPixY = ry;
  
  leftChances();
  
  if(leftChances == 0){
    GameOver();
  }
  
  img.updatePixels();
}

void mousePressed(){
  going=!going;
}

void GameOver(){
  going = false;
  textSize(60);
  fill(255,0,0);
  textAlign(CENTER, CENTER);
  text("GAME"+" "+"OVER",width/2,height/2);
}

void leftChances(){
  textSize(24);
  fill(0);
  textAlign(10, 390);
  text("Left"+" "+"chances"+" "+":"+" "+leftChances, 10,390);
}
