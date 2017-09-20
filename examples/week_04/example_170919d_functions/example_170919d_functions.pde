void setup() {
  size(512, 512);
  background(0);
}

void draw() {
  // Call the drawRandomRectangle function with two parameters: width and height
  drawRandomRectangle(width, height);
}

// Define the generateRandomColor function, which will return a color
color generateRandomColor() {
  // Return a random color
  return color(random(255), random(255), random(255));
}

// Define the drawRandomRectangle function, which will take two parameters but return nothing
void drawRandomRectangle(int maxX, int maxY) {
  float size = random(50);
  float x = random(maxX);
  float y = random(maxY);
  
  // Call the generateRandomColor function to..... generate a random color!
  color fillColor = generateRandomColor();

  fill(fillColor);
  noStroke();

  rectMode(CENTER);
  rect(x, y, size, size);
}