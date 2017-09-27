void setup() {
  size(500, 500);
  background(0);
  
  // Change the color mode to HSB,
  // with the hue ranging from 0 - 360,
  // the saturation ranging from 0 - 100,
  // and the brightness ranging from 0 - 100.
  // Check out Photoshop's color picker to see
  // how the RGB mode and the HSB mode work.
  
  colorMode(HSB, 360, 100, 100);
  
  for(int i =0; i<50; i++) {
    noStroke();
    
    // Generate a random fill color with a hue between 120 and 240
    // a saturation of 100
    // and a random brightness
    fill(random(120, 240), 100, random(100));
    
    // Confetti!
    ellipse(random(width), random(height), 50, 50);
  }
}