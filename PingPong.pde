float x, y, z;
PVector vel, pos;

float w = 250, h = 25;

void setup() {
  //background(30, 0, 0);
  size(800, 800);
  x = width * .5;
  y = height * .95;
  vel = new PVector (5, 10);
  pos = new PVector(50, 50);
  //z = height * .05;
}

void draw() {
  background(0, 18, 66);
  rectMode(CENTER);
  fill(229, 206, 220);
  rect(x, y, w, h);
  //fill(14, 85, 162);
  //rect(x, z, 250, 25);
  fill(54, 241, 205);
  circle(pos.x, pos.y, 25);
  pos.add(vel);
  if ((x - w/2 <= pos.x && pos.x <= x + w/2) && pos.y + 25 >= y - h/2) {
    vel.y *= -1;
}
  if (pos.y + 25 <= 25 ) {
    vel.y *= - 1;
  }
  if (pos.x + 25 >= width || pos.x - 25 <= 0) {
    vel.x *= -1;
  } 
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      x -= 20;
      if (x - w/2 < 0) {
        x = w/2;
      }
    } else if (keyCode == RIGHT) {
      x += 20;
      if (x + w/2 > width) {
        x = width - w/2;
      }
    }
  }
}
