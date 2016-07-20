PImage ball;
int x;
int y;
int hor = 3;
int vert = 3;

void setup(){
  size(750, 650);
  
  ball = loadImage("ball.png");
  x = (int) random(0, 650 - ball.width); 
  y = (int) random(0, height - ball.height);
}

void collide(){
  if ((y <= 0) || (y + ball.height >= height)){ 
  vert = -vert;   
  }
  else if ((x <= 0) || (x + ball.width >= 650)){
  hor = -hor; 
  }
}

void restart(){
  if (key == 'r'){
  ball = loadImage("ball.png");
  x = (int) random(0, 650 - ball.width); 
  y = (int) random(0, height - ball.height);
  }
  
  if ((mouseX >= 650) && (mousePressed)) {
  ball = loadImage("ball.png");
  x = (int) random(0, 650 - ball.width); 
  y = (int) random(0, height - ball.height);
  }
}

void draw(){
  background(255, 255, 255); 
  fill(0, 255, 0);
  rect(650, 0, 100, height);
  
  fill(255, 0, 0);
  textSize(50);
  text("R", 675, 60);
  text("E", 675, 150);
  text("S", 675, 240);
  text("T", 675, 330);
  text("A", 675, 420);
  text("R", 675, 510);
  text("T", 675, 600);
  
  image(ball, x, y);
  x = x + hor;
  y = y + vert;
  
  collide();
   
  restart();
}