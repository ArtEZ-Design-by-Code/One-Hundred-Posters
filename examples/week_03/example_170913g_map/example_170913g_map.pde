void setup() {
  size(512, 512);
}

void draw() {
  background(0);
  fill(255);
  noStroke();
  
  // Translate to the center of the canvas
  translate(width/2, height/2);
  
  // Take the current horizontal mouse position
  // This will be a number between zero and the width of the canvas (512)
  // Map this number to a new range: 50 to 250
  // So if the mouse position is 0 (to the left of the canvas)
  // The diameter will be 50, and if the mouse position is 512 (to the right)
  // The diameter will be 250
  
  float diameter = map(mouseX, 0, width, 50, 250);
  
  ellipse(0, 0, diameter, diameter);
}