import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int sensorPin=0;
PFont font;


void setup(){
  size(300,300);
  arduino=new Arduino(this, Arduino.list()[9],57600);
  font=loadFont("Serif-48.vlw");
}

void draw(){
  background(255);
  int sensorValue=arduino.analogRead(sensorPin); //Analog input
  textFont(font,32);
  fill(0);
  text("sensor value:"+sensorValue,32,32);
}
