import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int sensorPin=0;
PFont font;
int ledPin=13;//Pin number LED connected.
//int ledPin2=12;
float time=0;
boolean OnOff=false;
//int count=0;

void setup(){
  size(711,400);
  arduino=new Arduino(this, Arduino.list()[9],57600);
  font=loadFont("AppleSDGothicNeo-Thin-48.vlw"); 
  //Setting pinmode of arduino.
  //Setting number 13pin to output.
  arduino.pinMode(ledPin, Arduino.OUTPUT);
  //arduino.pinMode(ledPin2, Arduino.OUTPUT);
}
  
void draw(){
  float Time=millis();
  float Stime=0;
  background(255);
  Supply();
  
  text(Time/1000,32,170); 
  
  if (mousePressed){
    Time=Stime;
  }
  
}

void Supply(){
  println(time);
  int sensorValue=arduino.analogRead(sensorPin); //Analog input
  //int sensorValue2=arduino.analogRead(sensorPin); //Analog input
  textFont(font,42);
  fill(0);
  text("sensor value:"+sensorValue,32,50);
  //text("sensor value2:"+sensorValue2,32,90);
    
    if(sensorValue<250 && time<300){
      OnOff=true;
      time++;
    arduino.digitalWrite(ledPin, Arduino.HIGH);
    text("MisoSoup in supplying",32,130); 
  }else{
    OnOff=false;
    arduino.digitalWrite(ledPin,Arduino.LOW);
    text("MisoSoup not in supplying",32,130);
    //time=0;
  }
  
  if(sensorValue>250){
    time=0;
  }
  //if(time>=240){
  //  count=count+1;
  //}
  
  //if(count>=1){
  //  text(count+"time MisoSoup reserved",32,130);
  //}else{
  //  text(count+"times MisoSoup reserved",32,130);
  //}
}
