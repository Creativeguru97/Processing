class Planet{


PShape planet;
//PImage texture;
PImage texture;
PImage atomTexture;
PShape atomosphere;
float rotateValue = 0.01;
//PFont hudText;
//float PlanetX, PlanetY, PlanetZ;
//float PlanetX_, float PlanetY_, float PlanetZ_
  Planet(){
    texture = loadImage("dayEarth.jpg");
    atomTexture = loadImage("earthcloudmapEdited.png");
    //PlanetX = PlanetX_;
    //PlanetY = PlanetY_;
    //PlanetZ = PlanetZ_;
    
    noStroke();
    fill(255, 255, 255, 255);
    planet = createShape(SPHERE, 90);
    planet.setTexture(texture);
    fill(255,255);
    atomosphere = createShape(SPHERE, 95);
    atomosphere.setTexture(atomTexture);
  }
  
  void display(){
    //blendMode(ADD);
    //directionalLight(255, 0, 255, 0, 0, 0);
    directionalLight(225, 225, 255, 0, 1, 0);
    //lights();
    scale(1);
    translate(0, 0, 0);
    rotateX(-PI/2);
    shape(planet);
    shape(atomosphere);
  }
  
  void Hud(){
    /*For some reason, I can't samulteniously display earth shape 
    and this text proparly on same marker*/
    blendMode(NORMAL);
    translate(0, 0, 0);
    rotateX(-PI/2);
    rotateY(PI);
    textSize(10);
    fill(225,250,255);
    textMode(SHAPE);
    textAlign(CORNER, CENTER);
    strokeWeight(1);
    stroke(225,250,255);
    line(-10, -50, 0, 25, -70, 0);
    line(25, -70, 0, 80, -70, 0);
    
    String name = "Earth";
    text(name , 35, -60, 0);
    String diameter = "Diameter"+" "+":"+" "+12742;
    text(diameter, 35, -50, 0);
    String mass = "Mass"+" "+":"+" "+"5.972*10^24kg";
    text(mass, 35, -40, 0);
    String orbitalPeriod = "Orbital period"+" "+":"+" "+365.25+"days";
    text(orbitalPeriod, 35, -30, 0);
    String LengthOfDay = "Length of a day"+" "+":"+" "+23+"h, "+56+"m, "+4+"s";
    text(LengthOfDay, 35, -20, 0);
    String AvgTemperture = "Average temperture"+" "+":"+" "+280+"k";
    text(AvgTemperture, 35, -10, 0);
    String PlanetaryHabitability = "Planetary habitability"+":"+" "+"High";
    text(PlanetaryHabitability, 35, 0, 0);
    String moon = "Moon"+" "+":"+" "+"Yes";
    text(moon, 35, 10, 0);
    
    
  }
  
  void rotation(){
    planet.rotateY(rotateValue);
    atomosphere.rotateY(rotateValue);
   
    //rotateValue += 0.05;
  }
  
}
