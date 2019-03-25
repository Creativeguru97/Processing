PImage Note;
PImage Pencil;

float DrawColor1;
float DrawColor2;
float DrawColor3;


float Diameter;


void setup(){
  size(516,729);
  Note=loadImage("iOSnote_texture4.png");
  Pencil=loadImage("Pencil_01.png");
  //This time BG texture is here for not erase previous scene to show as "drawing".
  image(Note,0,0,516,729);
}


void draw(){
  //image(Pencil,mouseX-2,mouseY-70,60,72);
  
  frameRate(120);
  DrawColor1=random(0,255);
  DrawColor2=random(0,255);
  DrawColor3=random(0,255);
  
  Diameter=random(5,20);
  
  
  if(mousePressed){
  stroke(DrawColor1,DrawColor2,DrawColor3);
  //draw line from previous mouse location to current location.
  strokeWeight(10);
  line(pmouseX,pmouseY,mouseX,mouseY);
  }
  
  if(keyPressed){
  stroke(DrawColor1,DrawColor2,DrawColor3);
  fill(DrawColor1,DrawColor2,DrawColor3);
  rect(mouseX-Diameter/2,mouseY-Diameter/2,Diameter,Diameter);
  }else if(mousePressed){
  stroke(DrawColor1,DrawColor2,DrawColor3);
  //draw line from previous mouse location to current location.
  line(pmouseX,pmouseY,mouseX,mouseY);
  }
  
  
  
  
}



void mouseClicked(){
  image(Note,0,0,516,729);
}
