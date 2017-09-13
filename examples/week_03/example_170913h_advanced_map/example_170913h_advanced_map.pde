void setup() {
  size(512, 512);
  background(0);
}

void draw() {
  fill(255, 200);
  noStroke();
  
  // Pick a random x coordinate, in the range from 0 to width
  float x = random(width);
  
  // Pick a random y coordinate, in the range from 0 to height
  float y = random(height);
  
  // The sizeX should be small (5) when the x coordinate is small
  // And bigger if the x coordinate is greater
  float sizeX = map(x, 0, width, 5, 50);
  
  // The sizeX should be small (5) when the x coordinate is small
  // And greater if the x coordinate is greater
  float sizeY = map(y, 0, height, 5, 50);
  
  // Draw an ellipse
  ellipse(x, y, sizeX, sizeY);
}