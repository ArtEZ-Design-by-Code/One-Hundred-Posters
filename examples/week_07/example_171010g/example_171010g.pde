ArrayList<Element> elementList;

int numberOfElements = 200;

void setup() {
  size(594, 841);

  elementList = new ArrayList<Element>();

  for (int i=0; i<numberOfElements; i++) {
    Element e = new Element(
      random(width), 
      random(height), 
      random(10, 100), 
      random(-3, 3), 
      random(-3, 3)
      );

    elementList.add(e);
  }
}

void draw() {
  background(0);

  for (Element e : elementList) {
    e.update();
    e.display();
  }
}

class Element {
  float x, y, s, xSpeed, ySpeed;

  Element(float startX, float startY, float startSize, float startXSpeed, float startYSpeed) {
    this.x = startX;
    this.y = startY;
    this.s = startSize;
    this.xSpeed = startXSpeed;
    this.ySpeed = startYSpeed;
  }

  void move() {
    this.x += this.xSpeed;
    this.y += this.ySpeed;
  }

  void bounds() {
    if (this.x <= this.s / 2) {
      this.xSpeed = abs(this.xSpeed);
    }

    if (this.x >= width - this.s / 2) {
      this.xSpeed = -abs(this.xSpeed);
    }

    if (this.y <= this.s / 2) {
      this.ySpeed = abs(this.ySpeed);
    }

    if (this.y >= height - this.s / 2) {
      this.ySpeed = -abs(this.ySpeed);
    }
  }

  void update() {
    this.move();
    this.bounds();
  }

  void display() {
    noFill();

    for (Element that : elementList) {
      float distance = dist(this.x, this.y, that.x, that.y);
      float maxDistance = this.s / 2 + that.s / 2;
      float opacity = map(distance, 0, maxDistance, 255, 0);
      
      if (this != that && distance < maxDistance) {
        stroke(255, opacity);
        line(this.x, this.y, that.x, that.y);
      }
    }

    // Now, don't draw the actual circles anymore.
  }
}