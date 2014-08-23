// Pointillism
// Daniel Shiffman <http://www.shiffman.net>

// Mouse horizontal location controls size of dots
// Creates a simple pointillist-like effect using ellipse colored
// according to pixels in the image

// Created 2 May 2005

PImage a;

void setup()
{ 
  a = loadImage("sunflower.jpg");
  size(200,200);
  noStroke();
  background(255);
  smooth();
  frameRate(60);
}

void draw()
{ 
  // Calculate a value based on mouse location
  float pointillize = 2.0 + (mouseX / (float) width) * 16.0; 
  int x = int(random(a.width));
  int y = int(random(a.height));
  int loc = x + y*a.width;
  // Get RGB values from image
  float r = red(a.pixels[loc]);
  float g = green(a.pixels[loc]);
  float b = blue(a.pixels[loc]);
  // Draw an ellipse with 50% transparency
  fill(r,g,b,126);
  ellipse(x,y,pointillize,pointillize);
}
