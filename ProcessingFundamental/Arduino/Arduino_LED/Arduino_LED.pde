import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int ledPin=13;//Pin number LED connected.


void setup(){
  arduino=new Arduino(this, Arduino.list()[9],57600);
  
  //Setting pinmode of arduino.
  //Setting number 13pin to output.
  arduino.pinMode(ledPin, Arduino.OUTPUT);
}

void draw(){
  //13pin of Arduino to 5V.
  arduino.digitalWrite(ledPin, Arduino.HIGH);
}
