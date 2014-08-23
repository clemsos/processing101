// Daniel Shiffman
// <http://www.shiffman.net>

// Simple pixel array example
// Creates TV "snow"

void setup() {
  size(200,200);
  frameRate(30);
}

void draw() {
  background(0);

  // Before we access the pixels, we must call loadPixels() to make the array available
  loadPixels();
  
  // For every column
  for (int x = 0; x < width; x++) {
    // For every row
    for (int y = 0; y < height; y++) { 
      int loc = x + y*width; // converting from 2d location to 1d array
      float bright = random(255);  // pick a random brightness value
      pixels[loc] = color(bright);
    }
  }
  // After we write pixels, we must call updatePixels() to display the new values
  updatePixels();
}
