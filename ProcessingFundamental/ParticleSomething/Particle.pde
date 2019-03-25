
class Particle{
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  void applyForce(PVector force){
    acceleration.add(force);
  }

  Particle(float x, float y){
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    
  }
  
  void up(){
    velocity.add(acceleration);
    location.add(velocity);
    //After update the particle each frame, multiply ita acceleration by zero
    acceleration.mult(0);
  }
}
