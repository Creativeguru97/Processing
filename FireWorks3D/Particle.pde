class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  boolean seed = false;

  float hu;

  Particle(float x, float y, float z, float h) {
    hu = h;

    acceleration = new PVector(0, 0, 0);
    velocity = new PVector(0, random(-20, -10), 0);
    location =  new PVector(x, y, z);
    seed = true;
    lifespan = 255.0;
  }

  Particle(PVector l, float h) {
    hu = h;
    acceleration = new PVector(0, 0, 0);
    velocity = PVector.random3D();
    velocity.mult(random(4, 8));
    location = l.copy();
    lifespan = 255.0;
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void run() {
    update();
    display();
  }

  boolean explode() {
    if (seed && velocity.y > 0) {
      lifespan = 0;
      return true;
    }
    return false;
  }

  // Method to update location
  void update() {

    velocity.add(acceleration);
    location.add(velocity);
    if (!seed) {
      lifespan -= 2.5;
      /*muliply by 0.95 because when explode with vel which is between -12 to -5,
      It's gonna be quite too large explosion.*/
      velocity.mult(0.95);
    }
    acceleration.mult(0);
  }

  // Method to display
  void display() {
    stroke(hu, 255, 255, lifespan);
    if (seed) {
      strokeWeight(5);
    } else {
      strokeWeight(random(2, 3));
    }
    pushMatrix();
    translate(location.x, location.y, location.z);
    point(0, 0);
    //ellipse(location.x, location.y, 12, 12);
    popMatrix();
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
