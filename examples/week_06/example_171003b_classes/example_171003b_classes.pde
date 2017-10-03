Ball[] balls;
int nBalls = 150;

void setup() {
  size(512, 512);
  background(0);

  balls = new Ball[nBalls];

  for (int counter = 0; counter<balls.length; counter++) {
    Ball myBall = new Ball(
      random(width), 
      random(height), 
      random(-4, 4), 
      random(-4, 4)
      );
      
    balls[counter] = myBall;
  }
}

void draw() {
  background(0);

  for (int counter=0; counter<balls.length; counter++) {
    balls[counter].move();
    balls[counter].display();
  }
}

class Ball {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float size;
  
  color myColor;

  Ball(float inputX, float inputY, float inputXSpeed, float inputYSpeed) {
    this.x = inputX;
    this.y = inputY;
    this.xSpeed = inputXSpeed;
    this.ySpeed = inputYSpeed;
    
    this.size = random(4, 15);
    this.myColor = color(random(255), random(255), random(255));
  }

  void move() {
    this.x += this.xSpeed;
    this.y += this.ySpeed;

    this.checkBoundaries();
  }

  void checkBoundaries() {
    if (this.y >= height) {
      this.ySpeed *= -1;
    }

    if (this.y <= 0) {
      this.ySpeed *= -1;
    }

    if (this.x >= width) {
      this.xSpeed *= -1;
    }

    if (this.x <= 0) {
      this.xSpeed *= -1;
    }
  }

  void display() {
    fill(this.myColor);
    noStroke();
    ellipse(this.x, this.y, this.size, this.size);
    
    for (int newCounter=0; newCounter<balls.length; newCounter++) {
      Ball otherBall = balls[newCounter];
      
      if (otherBall != this && dist(this.x, this.y, otherBall.x, otherBall.y) < 50) {
        
        stroke(255);
        line(this.x, this.y, otherBall.x, otherBall.y);
      }
    }
  }
}