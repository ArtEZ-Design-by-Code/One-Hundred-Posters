void setup() {
  size(1000, 1000);
  background(0);
  
  translate(width / 2, height / 2);
  
  // Create a variable for the size of each circle
  int size = 360;
  
  noFill();
  stroke(255);
  
  // A reversed for-loop! We start at rotation = 359, and decrease the rotation on each iteration until we reach zero
  for(int rotation = 359; rotation >= 0; rotation--) {
    pushMatrix();
    rotate(radians(rotation));
    ellipse(300, 0, size, size);
    size--;
    popMatrix();
  }
}