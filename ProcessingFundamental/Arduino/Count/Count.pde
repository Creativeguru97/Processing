PFont font;
int count=0;

void setup(){
  size(711,400);

  font=loadFont("AppleSDGothicNeo-Thin-48.vlw"); 

}

void draw(){

  background(255);

  
  text(Time/1000,32,130); 
  
  if (mousePressed){
    Time=Stime;
  }
}
