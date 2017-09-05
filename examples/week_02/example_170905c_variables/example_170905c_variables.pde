// Create two floating point type variables
float x = random(512);
float y = random(512);

size(512, 512);
background(0);

fill(255);
// Draw a circle, using the x and y variables from above
ellipse(x, y, 100, 100);

fill(128);
// Draw a smaller circle, using the x and y variables from above
ellipse(x, y, 75, 75);

fill(50);
// Draw an even smaller circle, using the x and y variables from above
ellipse(x, y, 50, 50);