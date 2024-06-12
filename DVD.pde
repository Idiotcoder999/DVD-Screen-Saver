float x = 700, y = 700, xspeed = random(1, 5), yspeed = random(1, 5);
PImage dvd;

void setup() {
  dvd = loadImage("DVD.png");
  fullScreen();
}

void draw() {
  background(0, 0, 255);
  move();
}

void move(){
  imageMode(CENTER);
  image(dvd, x, y, 200, 200);
  x+=xspeed;
  y+=yspeed;
  if(x >= width - 100){
   xspeed = xspeed * -1;
  }
  if(y >= height - 100){
   yspeed = yspeed * -1; 
  }
  if(x <= 100){
   xspeed = xspeed * -1; 
  }
  if(y <= 100){
   yspeed = yspeed * -1; 
  }
}
