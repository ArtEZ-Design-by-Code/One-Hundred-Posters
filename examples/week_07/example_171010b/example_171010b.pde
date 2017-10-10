// An ArrayList object has some more advanced features than a regular array.
// It can grow and shrink for example, so you can keep adding elements to it. 
ArrayList<Element> elementList;

int numberOfElements = 50;

void setup() {
  size(594, 841);

  // elementList is an ArrayList that is going to hold objects of the Element class.
  elementList = new ArrayList<Element>();

  // Let's create a loop that runs 50 times.
  for (int i=0; i<numberOfElements; i++) {
    // We create a new Element object, which we store in a variable called 'e'.
    // We pass three parameters to the constructor function: an x coordinate (random(width)),
    // a y coordinate (random(height)), and a size (random(10, 100)).
    Element e = new Element(
      random(width), 
      random(height), 
      random(10, 100)
      );

    // So now we've created an Element object, but we still have to add it to the elementList ArrayList.
    elementList.add(e);
  }
}

void draw() {
  background(0);
  
  // Loop over every Element object that is in the elementList ArrayList,
  // and store it in a variable we will call 'e'.
  for (Element e : elementList) {
    // Call the display method of Element e.
    e.display();
  }
}

// We define our class, called Element.
class Element {
  // It will hold an x and y position and should have a size.
  float x, y, s;

  // This is the constructor. It should have the same name as the class,
  // and will be called whenever you instantiate a new Element.
  Element(float startX, float startY, float startSize) {
    // We take the input parameters and store them in the fields x, y, and s.
    this.x = startX;
    this.y = startY;
    this.s = startSize;
  }

  // Our display method is just going to draw an ellipse at the correct position and size.  
  void display() {
    stroke(255);
    noFill();
    ellipse(x, y, s, s);
  }
}