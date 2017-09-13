void setup() {
  size(512, 512);
  background(0);
}

void draw() {
  background(0);
  
  // Translate the grid
  translate(width/2, height / 2);
  
  // Rotate according to the vertical mouse position
  rotate(radians(mouseY));
  
  // Draw a rectangle
  fill(255);
  noStroke();
  rect(0, 0, 100, 100);
}