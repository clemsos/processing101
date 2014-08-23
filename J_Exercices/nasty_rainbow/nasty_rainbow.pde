color[] colors;
int nbColors=0;
int maxColors=10;

void setup() {
    size(50, 50);
    smooth();
    background(0);
    noStroke();

    colors= new color[maxColors];

    for (int i = 0; i < maxColors; ++i) {
        // println(i);
        colors[i] = color( random(0,255) , random(0,255) , random(0,255) );

    }
}

void draw() {
    background(colors[ floor(random(0,nbColors)) ] );

}
void keyPressed() {
    if (key=='+') {// si la touche appuyée est ' '(ESPACE), on peut mettre n'importe quel caractère, Processing distingue la casse: 'r' est différent de 'R'
        
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
