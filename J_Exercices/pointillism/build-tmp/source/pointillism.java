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

public class pointillism extends PApplet {

// Pointillism
// Daniel Shiffman <http://www.shiffman.net>

// Mouse horizontal location controls size of dots
// Creates a simple pointillist-like effect using ellipse colored
// according to pixels in the image

// Created 2 May 2005

PImage a;

public void setup()
{ 
  a = loadImage("sunflower.jpg");
  size(200,200);
  noStroke();
  background(255);
  smooth();
  frameRate(60);
}

public void draw()
{ 
  // Calculate a value based on mouse location
  float pointillize = 2.0f + (mouseX / (float) width) * 16.0f; 
  int x = PApplet.parseInt(random(a.width));
  int y = PApplet.parseInt(random(a.height));
  int loc = x + y*a.width;
  // Get RGB values from image
  float r = red(a.pixels[loc]);
  float g = green(a.pixels[loc]);
  float b = blue(a.pixels[loc]);
  // Draw an ellipse with 50% transparency
  fill(r,g,b,126);
  ellipse(x,y,pointillize,pointillize);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "pointillism" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
