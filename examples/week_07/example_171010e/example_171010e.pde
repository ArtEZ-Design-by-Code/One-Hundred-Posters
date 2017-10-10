ArrayList<Element> elementList;

int numberOfElements = 50;

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
    stroke(255);
    noFill();

    // Loop over every Element in elementList and store each in a variable called 'that'.
    for (Element that : elementList) {
      // If this (Element) does not equal that (Element),
      // And the distance between the two Elements is less than their two sizes combined and halved,
      // It means the two are touching or overlapping eachother.
      // Again, sketch this out on paper to make sure you understand.
      
      float distance = dist(this.x, this.y, that.x, that.y);
      float maxDistance = this.s / 2 + that.s / 2;
      
      if (this != that && distance < maxDistance) {
        // If they overlap, draw a line between them.
        line(this.x, this.y, that.x, that.y);
      }
    }

    ellipse(x, y, s, s);
  }
}