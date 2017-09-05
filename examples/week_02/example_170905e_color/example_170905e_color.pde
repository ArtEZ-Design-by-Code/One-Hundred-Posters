// Create a color variable
color theFillColor = color(255, 0, 0);

void setup() {
  size(512, 512);
  background(255);
}

void draw() {
  // Use the fill color
  fill(theFillColor);
  noStroke();
  
  // Create an image in the center
  // of the screen (divide the built-
  // in width variable by two, same for height)
  
  ellipse(width / 2, height / 2, 200, 200);
}