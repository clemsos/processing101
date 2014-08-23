color blue= color(36,164,248); //color(R,G,B);
color orange= color(232,140,12,200); //color(R,G,B,a), 255 means 100% opacity.
color yellow= color(#FFCC00);

smooth();                   // meilleur affichage (anti-aliased)

size(200,200);              // taille de l'espace de travail
background(blue);           // fond bleu

stroke(yellow);             // trait jaune
line(1,1,200,200);          // line(x1, x2, y1, y2)

noStroke();                 // pas de contour/trait
fill(orange);               // remplissage orange

rect(50,50,100,100);        // rect(x, y, width, height);

noFill();                   // pas de remplissage
stroke(0);                  // noir

ellipse(100,100,90,90);     // ellipse(x, y, width, height);
ellipse(50,50,50,50);       // ellipse(x, y, width, height);
ellipse(150,150,50,50);     // ellipse(x, y, width, height);

triangle(20, 20, 35, 55, 60, 10);//coordonnées x, y de 3 points

stroke(255, 0, 30, 120);//contour(rouge,vert,bleu,transparence)
strokeWeight(4);//épaisseur du contour
noFill();//pas de remplissage
quad(40, 55, 65, 10, 85, 20, 92, 53);//coordonnées x, y de 4 points
