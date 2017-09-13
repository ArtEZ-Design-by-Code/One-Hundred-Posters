size(500, 500);
background(0);

// Draw a cyan rectangle at the origin
noStroke();
fill(0, 255, 255);
rect(0, 0, 50, 50);

// Save the current state of the matrix (let's call this State A)
pushMatrix();

// Translate and rotate the matrix
translate(width /2, height/2);
rotate(radians(10));

// Draw a cross through the new origin
stroke(255);
noFill();
line(-500, 0, 500, 0);
line(0, -500, 0, 500);

// And a red rectangle at the new origin
fill(255, 0, 0);
noStroke();
rect(0, 0, 50, 50);

// Save the current state of the matrix again (call this State B)
pushMatrix();

// Do some rotation and translation
rotate(radians(5));
translate(50,50);

// Draw a green rectangle at the new origin
fill(0, 255, 0);
rect(0, 0, 50, 50);

// Return to the previous state of the matrix (back to State B),
// clearing the transformations that came after State B
popMatrix();

// Draw a smaller yellow rectangle at the new origin
fill(255, 255, 0);
rect(0, 0, 25, 25);

// Return to the previous state of the matrix (back to State A),
// clearing the transformations that came after State A
popMatrix();

// Draw a smaller purple rectangle at the new origin
fill(255, 0, 255);
rect(0, 0, 25, 25);