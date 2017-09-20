void setup() {
  size(512, 512);
  background(0);

  noFill();
  stroke(255);
  strokeWeight(2);
  
  // Start out at y = 0, continue until y reaches the height of the canvas, and after each iteration increment y by 20
  for (int y = 0; y < height; y += 20) {
    // Draw a line from left to right, at the y coordinate
    line(0, y, width, y);
  }

  // Exactly the same as above, except here we're doing the vertical lines, which increment over the x axis
  for (int x = 0; x < width; x += 20) {
    line(x, 0, x, height);
  }
}