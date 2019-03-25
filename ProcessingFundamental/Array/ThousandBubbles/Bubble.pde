//This is how Bubble it self is. 
class Bubble{//Define the class.
//Class is a template for making an object.

//Data below
  float x = random(32+width-32);
  float y = random(height+32,900);
  float diameter;
  float YSpeed = random(0.5, 2.5);
  float ColorR;
  float ColorG;
  float ColorB;

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
    stroke(0);
    fill(ColorR,ColorG,ColorB,30);
    ellipse(x,y,diameter,diameter);
  }
  
   void ascend(){//Class excute these functions.
    y=y-YSpeed;
    x=x+random(-2,2);
  }
  
  void top(){
    if(y<=diameter/2){
      y=random(height+32,900);
      //alternative: Ymove=0;
    }
  }
 
  
}
