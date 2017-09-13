size(500, 500);
background(0);

fill(255);
noStroke();

// Draw a rectangle at the origin
rect(0, 0, 50, 50);

// Translate the matrix 50 pixels to the right, and 50 down
translate(50, 50);

// Draw a rectangle at the new origin
rect(0, 0, 50, 50);

// Translate the grid left by 50 pixels and down 50
translate(-50, 50);

// Draw a rectangle at the new origin
rect(0, 0, 50, 50);