// Define an array of colors

color[] colors = {
  color(255, 255, 255),
  color(255, 255, 0), 
  color(0, 255, 255), 
  color(255, 0, 255), 
  color(255, 0, 0), 
  color(0, 255, 0), 
  color(0, 0, 255)
};

void setup() {  
  size(500, 500);
  background(0);
  translate(width / 2, height / 2);

  strokeWeight(2);
  noFill();

  // Loop over all of the colors in the array
  for (int i=0; i<colors.length; i++) {
    stroke(colors[i]);

    float size = (i + 1) * 50;

    ellipse(0, 0, size, size);
  }
}