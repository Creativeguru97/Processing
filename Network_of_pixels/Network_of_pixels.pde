 Point[] points = new Point[200];

void setup() {
fullScreen(FX2D); // FX2D works better for this sketch

for (int i = 0; i < points.length; i++)
points[i] = new Point(random(width), random(height), 0.002f, 50);
}

void draw() {
background(0);
stroke(#45DFE3);
strokeWeight(0.3f);

  for (int i = 0; i < points.length; i++) {
    points[i].update();
    for (int j = 0; j < points.length; j++) {
      if (i != j && points[i].isNear(points[j])) {
        line(points[i].x, points[i].y, points[j].x, points[j].y);
      points[i].show();
      }
    }
  }
//println((int) frameRate);
}

class Point {
float x, y;
float xoff, yoff, speed;
float proximity;

Point(float x, float y, float speed, float proximity) {
this.x = x;
this.y = y;
this.speed = speed;
this.proximity = proximity;
xoff = random(50000);
yoff = random(50000);
}

void show() {
noStroke();
fill(255, 30);
ellipse(x, y, 8, 8);
}

void update() {
x = noise(xoff) * (height);
x += width/4; // this is here just to offset (to "center") the x coordinate.
xoff += speed;

y = noise(yoff) * (height);
yoff += speed;
}

boolean isNear(Point other) {
float d = dist(this.x, this.y, other.x, other.y);
return d < proximity ;
}
}
