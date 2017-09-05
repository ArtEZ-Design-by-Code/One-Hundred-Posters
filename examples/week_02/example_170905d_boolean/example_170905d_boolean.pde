// Booleans can be either true or false
boolean isThisFun = true;

void setup() {
  size(512, 512);
  background(255);
}

void draw() {
  // If this is fun == true
  if (isThisFun) {
    // White background!
    background(255);
    
    // Else...
  } else {
    // Black background!
    
    background(0);
  }
}