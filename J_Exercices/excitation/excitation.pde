int excitation=0;
int maxExcitation=10;
// int[] excitationLevels;

void setup() {
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

void draw() {
    background(0);
    stroke(255);//contour(rouge,vert,bleu,transparence)
    strokeWeight(4);//épaisseur du contour
    noFill();//pas de remplissage

    rect(50+random(0,excitation),50+random(0,excitation),100,100);        // rect(x, y, width, height);
}

void keyPressed() {
    if (key=='+') {// si la touche appuyée est ' '(ESPACE), on peut mettre n'importe quel caractère, Processing distingue la casse: 'r' est différent de 'R'
        
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
