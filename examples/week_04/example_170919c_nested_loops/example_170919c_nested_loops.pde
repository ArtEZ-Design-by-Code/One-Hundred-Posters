void setup() {
  size(512, 512);
  background(0);

  fill(255);
  noStroke();

  // Start out with a full red channel
  float redAmount = 255;
  
  // The diameter will be width / 10 (so 10 circles will fit in the width)
  float diameter = width / 10;

  // i is going to hold the total amount of circles we are drawing
  int i = 0;
  
  textAlign(CENTER);
  
  // We are going to iterate over the vertical axis and increment the y value by the diameter 
  for (float y = diameter / 2; y <= height; y += diameter) {
    // Inside the "vertical" loop, we create a horizontal loop
    for (float x = diameter / 2; x <= width; x += diameter) {
      fill(redAmount, 0, 128);
      ellipse(x, y, diameter, diameter);
      
      // Give each circle a label. Check out the order in which the circles are drawn.
      // Read over the nested for-loops, and make sure you understand why they are drawn in this order
      fill(255);
      text(i, x, y);

      redAmount -= 2;
      
      // We've drawn a circle, so increment i by one. This variable counts how many circles we've drawn.
      i++;
    }
  }
}