ArrayList<Element> elementList;

int numberOfElements = 50;

void setup() {
  size(594, 841);

  elementList = new ArrayList<Element>();

  for (int i=0; i<numberOfElements; i++) {
    // We now pass a fourth and fifth argument: an xSpeed and a ySpeed.
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
    // We now also call each Element's update method on every frame.
    e.update();
    e.display();
  }
}

class Element {
  // We add some fields: an xSpeed and a ySpeed.
  float x, y, s, xSpeed, ySpeed;

  // Our constructor now takes five parameters.
  Element(float startX, float startY, float startSize, float startXSpeed, float startYSpeed) {
    this.x = startX;
    this.y = startY;
    this.s = startSize;
    this.xSpeed = startXSpeed;
    this.ySpeed = startYSpeed;
  }

  void update() {
    this.x += this.xSpeed;
    this.y += this.ySpeed;
  }

  void display() {
    stroke(255);
    noFill();
    ellipse(x, y, s, s);
  }
}