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

  // I've split the update method into a move and a bounds method.
  void move() {
    this.x += this.xSpeed;
    this.y += this.ySpeed;
  }
  
  void bounds() {
    // If the x position is smaller than half the size of the Element,
    // it means the left side of the circle has hit the left side of the screen.
    // Sketch it out on paper if you're unsure about this.
    if (this.x <= this.s / 2) {
      // Once we hit the left side of the screen, we want to make sure the xSpeed starts
      // facing to the right (i.e. have a positive xSpeed).
      this.xSpeed = abs(this.xSpeed);
    }

    // Same as above, except for the right side. Again, sketch this out to understand.
    if (this.x >= width - this.s / 2) {
      // Take the absolute value and invert it so our speed faces to the left.
      this.xSpeed = -abs(this.xSpeed);
    }

    // Same goes for the ySpeed.
    if (this.y <= this.s / 2) {
      this.ySpeed = abs(this.ySpeed);
    }

    if (this.y >= height - this.s / 2) {
      this.ySpeed = -abs(this.ySpeed);
    }
  }
  
  void update() {
    // Call the move method
    this.move();
    
    // Call the bounds method
    this.bounds();
  }

  void display() {
    stroke(255);
    noFill();
    ellipse(x, y, s, s);
  }
}