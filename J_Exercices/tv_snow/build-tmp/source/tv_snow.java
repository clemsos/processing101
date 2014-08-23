import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class tv_snow extends PApplet {

// Daniel Shiffman
// <http://www.shiffman.net>

// Simple pixel array example
// Creates TV "snow"

public void setup() {
  size(200,200);
  frameRate(30);
}

public void draw() {
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "tv_snow" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
