//This is how Bubble it self is. 
class Bubble{//Define the class.
//Class is a template for making an object.

//Data below
  float x = random(64+width-64);
  float y = random(-400,-32);
  float diameter;
  float YSpeed = random(0.5, 2.5);
  float ColorR;
  float ColorG;
  float ColorB;
  float Sd;

  Bubble(float EachDiameter, float EachColorR, float EachColorG, float EachColorB){//In OOP we must initialize at HERE!
    //x=width/2; //Data of this object.
    //y=height;
    diameter=EachDiameter;
    ColorR=EachColorR;
    ColorG=EachColorG;
    ColorB=EachColorB;
    
    //diameter at here: variable
    //EachDiameter: Argument (local variable only to this function.)
  }

//Function of the Class below.
//All object have ability to excute those functions.
  void display(){
    strokeWeight(1);
    //stroke(255);
    stroke(ColorR-40, ColorB-40, ColorG-40,160);
    fill(ColorR,ColorG,ColorB,30);
    ellipse(x,y,diameter,diameter);
    //BubbleDiameter = diameter;
    BubbleX = x;
    BubbleY = y;
    
    float d = dist(x, y, ColiPixX, ColiPixY);
    Sd = d;
    //println(d);
  }
  
   void ascend(){//Class excute these functions.
    y=y+YSpeed;
    //y=y-YSpeed;
    x=x+random(-2,2);
  }
  
  void ground(){
    if(y>=height-32){
      x = random(64+width-64);
      y=random(-400,-32);
      //alternative: Ymove=0;
      leftChances--;
    }
  }
  
  void touch(){
    if(Sd < diameter+32){
      x = random(64+width-64);
      y=random(-400,-32);
      println(Sd);
    }
  }
 
  
}
