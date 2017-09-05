// Create a variable called x
int x = 0;

// This gets run once
void setup() {
  size(512, 512);
  background(0);
}

// Repeat the following on every frame
void draw() {
  // Reset the background (so clear the screen to black)
  background(0);
  
  // Set a white fill color
  fill(255);
  noStroke();
  
  // Draw an ellipse in the vertical center, with the x value from above
  ellipse(x, height / 2, 50, 50);
  
  // After drawing, increment the x value by one
  x++;
}