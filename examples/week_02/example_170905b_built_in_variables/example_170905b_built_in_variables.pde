void setup() {
  size(500, 500);
}

void draw() {
  // Print the mouse location.
  
  println("The mouse location is: " + mouseX + " , " + mouseY);
  
  // Print if the mouse is pressed
  
  println("Is the mouse pressed? " + mousePressed);
  
  // Print the size of the sketch
  
  println("The size of the sketch is " + width + " , " + height);
  
  // Print the framerate
  
  println("FPS!!!: " + frameRate);
  
  // Print the framecount
  
  println("I've drawn " + frameCount + " frames");
}