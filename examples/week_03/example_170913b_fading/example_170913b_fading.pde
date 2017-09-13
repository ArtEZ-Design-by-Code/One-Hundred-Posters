void setup() {
  size(594, 841);
  background(0);
}

void draw() {
  // Draw a nearly completely transparent black rectangle over the entire screen on each frame
  fill(0, 1);
  noStroke();
  rect(0, 0, width, height);
  
  // Draw an ellipse at the mouse position
  fill(255);
  ellipse(mouseX, mouseY, 50, 50);
}