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

public class excitation extends PApplet {

int excitation=0;
int maxExcitation=10;
// int[] excitationLevels;

public void setup() {
    size(200, 200);
    smooth();
    background(0);
    noStroke();

    // excitationLevels= new int[maxExcitation];
    // for (int i = 0; i < maxExcitation; ++i) {
    //     // println(i);
    //     excitationLevels[i] = i;
    // }
}

public void draw() {
    background(0);
    stroke(255);//contour(rouge,vert,bleu,transparence)
    strokeWeight(4);//\u00e9paisseur du contour
    noFill();//pas de remplissage

    rect(50+random(0,excitation),50+random(0,excitation),100,100);        // rect(x, y, width, height);

}
public void keyPressed() {
    if (key=='+') {// si la touche appuy\u00e9e est ' '(ESPACE), on peut mettre n'importe quel caract\u00e8re, Processing distingue la casse: 'r' est diff\u00e9rent de 'R'
        
        if (excitation < maxExcitation) excitation++;
        else  excitation=maxExcitation;

        println("+1",excitation);

    } else if (key=='-') {

        println("-1",excitation);

        // prevent from going negative
        if (excitation > 0)  excitation--;
        else excitation=0;
    }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "excitation" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
