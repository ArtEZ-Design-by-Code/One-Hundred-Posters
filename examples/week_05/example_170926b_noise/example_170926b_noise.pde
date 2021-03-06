// The smoothness variable is going to control.... the smoothness of the noise.
float smoothness = 100;

void setup() {
  size(512, 512);
  background(0);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  rectMode(CENTER);
  
  // Draw a grid... See previous examples of nested loops.
  for (float y =0; y<height; y+=10) {
    for (float x =0; x<width; x+=10) {
      pushMatrix();
      translate(x, y);
      
      // Generate a random number using the Noise function.
      // We divide by the smoothness variable we created above,
      // In order to define the size of the steps between each
      // number generated by the noise function.
      // The noise function always outputs a number between zero and one,
      // So we multiply by TWO_PI to achieve a value that we can use for
      // rotation.
      
      float randNumber = noise(x / smoothness, y / smoothness) * TWO_PI;
      rotate(randNumber);
      
      // Finally, draw a rectangle.
      
      rect(0, 0, 5, 5);
      popMatrix();
    }
  }
}