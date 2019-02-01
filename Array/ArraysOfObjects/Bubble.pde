//This is how Bubble it self is. 
class Bubble{//Define the class.
//Class is a template for making an object.

//Data below
  float x;
  float y;
  float diameter;

  Bubble(float XPosition, float YPosition, float EachDiameter){//In OOP we must initialize at HERE!
    //x=width/2; //Data of this object.
    //y=height;
    diameter=EachDiameter;
    x=XPosition;
    y=YPosition;
  
    //diameter at here: variable
    //EachDiameter: Argument (local variable only to this function.)
  }

//Function of the Class below.
//All object have ability to excute those functions.
  void display(){
    stroke(0);
    fill(127);
    ellipse(x,y,diameter,diameter);
  }
  
   void ascend(){//Class excute these functions.
    y--;
    x=x+random(-2,2);
  }
  
  void top(){
    if(y<=diameter/2){
      y=diameter/2;
      //alternative: Ymove=0;
    }
  }
  
  void pop(){
    going=!going;
  }
  
}
