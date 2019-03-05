//This is how Bubble it self is. 
class Bubble{//Define the class.
//Class is a template for making an object.

//Data below
  float x = random(32+width-32);
  float y = random(height+32,900);
  float diameter;
  float YSpeed = random(0.5, 2.5);
  
  PImage img;

  Bubble(PImage RandomFlower, float EachDiameter){
    diameter=EachDiameter;
    img = RandomFlower;
  }


  void display(){
    imageMode(CENTER);
    image(img,x,y,diameter,diameter);
  }
  
   void ascend(){
    y=y-YSpeed;
    x=x+random(-2,2);
  }
  
  void top(){
    if(y<=diameter/2){
      y=random(height+32,900);

    }
  }
 
  
}
