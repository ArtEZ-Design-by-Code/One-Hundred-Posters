// Setup is executed ONLY ONCE, upon running the program

void setup() {
  // Set the size of the sketch
  size(594, 841);
  
  // Disable stroking
  noStroke();
}

// Draw is executed ONCE EVERY FRAME, usually 60 times per second

void draw() {
  // Reset the screen to black every frame
  // Comment out the following line by putting // before it, and see the difference
  background(0);
  
  // Pick a random fill color (different on every frame)
  fill(random(255), random(255), random(255), 255);
  
  // Draw a circle at the mouse location
  ellipse(mouseX, mouseY, 100, 100);
}