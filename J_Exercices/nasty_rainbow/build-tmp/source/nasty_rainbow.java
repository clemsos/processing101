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

public class nasty_rainbow extends PApplet {

int[] colors;
int nbColors=0;
int maxColors=10;

public void setup() {
    size(50, 50);
    smooth();
    background(0);
    noStroke();

    colors= new int[maxColors];

    for (int i = 0; i < maxColors; ++i) {
        // println(i);
        colors[i] = color( random(0,255) , random(0,255) , random(0,255) );

    }
}

public void draw() {
    background(colors[ floor(random(0,nbColors)) ] );

}
public void keyPressed() {
    if (key=='+') {// si la touche appuy\u00e9e est ' '(ESPACE), on peut mettre n'importe quel caract\u00e8re, Processing distingue la casse: 'r' est diff\u00e9rent de 'R'
        
        if (nbColors < maxColors) nbColors++;
        else  nbColors=maxColors;

        println("+1",nbColors);

    } else if (key=='-') {

        println("-1",nbColors);

        // prevent from going negative
        if (nbColors > 0)  nbColors--;
        else nbColors=0;
    }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "nasty_rainbow" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
