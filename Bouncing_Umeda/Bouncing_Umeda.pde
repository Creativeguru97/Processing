PImage BG;
PImage bounce;

float bounceX=random(0,width);
float bounceY=random(0,height);

float Xspeed=5; 
float Yspeed=5;

float AddSpeedX=3;
float AddSpeedY=3;

boolean going=false; //Set Initial value to false

void setup(){
  size(960,540);
  BG=loadImage("BG.png");
  bounce=loadImage("MyName.png");
}

void draw(){
  frameRate(120);
  image(BG,0,0,960,540);
  
  //Object oriented programming!!!!!!!!!!!!!
  //Calling functions I stated below.
  //This makes program easy to debuging.
  displayUmeda();
  moveUmeda();
  checkUmeda();

}

void mousePressed(){
  going=!going;
 
 //if (!going){
  //  going=true;
  //}else{
  //  going=false;
  //}
// Or just write like "going=!going". Wow WTF is unbelievably easy.

}

void displayUmeda(){
  image(bounce,bounceX,bounceY,150,50);
}

void moveUmeda(){
    //Start moving triggered by boolean value
  if (going){
    bounceX=bounceX+Xspeed;
    bounceY=bounceY+Yspeed;
  //Optional: "println(bounceX);" for track the value's location.
  }
}

void checkUmeda(){
   //Accelerate objectX
  if(bounceX>width-150){
    Xspeed=Xspeed*-1-AddSpeedX;
  }
 if(bounceX<0){
    Xspeed=Xspeed*-1+AddSpeedX;
  }
  
  
 if(bounceY>height-50){
    Yspeed=Yspeed*-1-AddSpeedY;
  }
 if(bounceY<0){
    Yspeed=Yspeed*-1+AddSpeedY;
  }
}
