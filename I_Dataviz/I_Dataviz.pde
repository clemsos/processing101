/*

Compter les occurences des lettres dans les différents livres.

Tout les textes viennent du site Gutenberg Project

The Life and Adventures of Robinson Crusoe, by Daniel Defoe
http://www.gutenberg.org/files/521/521-0.txt

Huckleberry Finn, by Mark Twain
http://www.gutenberg.org/cache/epub/76/pg76.txt

Frankenstein, by Mary Shelley 
http://www.gutenberg.org/cache/epub/84/pg84.txt

*/

String[] txt;//tableau de chaîne de caractère ("phrase"), contient toutes les lignes de notre texte

int[] nbLettres;// tableau de nombre entier (Integer), pour compter le nombre de 'A',  de 'B', de 'C', ... : on a un nombre pour chaque lettre

int nbTotal;// variable pour le nombre total de lettre dans le texte

String alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZ"; // liste de caractères représentant l'alphabet latin

// String book_url="http://www.gutenberg.org/cache/epub/84/pg84.txt";
String bookUrl="./data/frankenstein.txt";

void setup() {
    size(700, 700);
    smooth();
    background(255);
    noStroke();

    // décompte des lettres
    nbLettres= new int[26];// on a besoin de 26 valeurs pour les 26 lettres
    for (int i=0; i<nbLettres.length; i++) {//initialisation des variables du tableau
        nbLettres[i]=0;//pour le moment on 0(zéro) A, 0 B, 0 C, ...
    }

/////////////////////////////OBTENIR LES DONNÉES 

    // on charge ici un document (fichier texte) depuis une adresse absolue (comme une adresse internet) ou un fichier 
    txt=loadStrings(bookUrl);
    // println(txt); //affichage du texte (tableau de phrases)

    // le tableau obtenu contient toutes les lignes de texte
    println("nbre de lignes: "+txt.length);

///////////////////////////// MISE EN FORME ET ANALYSE

    for (int i = 0; i < txt.length; ++i) { // pour chaque ligne
        
        String ligne=txt[i].toUpperCase(); //mise en majuscule de la ligne i 

        for (int j = 0; j < ligne.length(); ++j) { // pour chaque caractère j de la ligne i
            
            char lettre=ligne.charAt(j); // le caractère à la position 'j' de la ligne
            int index_de_la_lettre=alphabet.indexOf(lettre); // trouver la position de la lettre dans l'alphabet

            if(index_de_la_lettre != -1) { // vérifier que la lettre existe bien dans l'alphabet (exclure les autres caractères)

                nbLettres[index_de_la_lettre]++; // on ajoute +1 à notre décompte
                nbTotal++; // un compte total des lettres

            }

            
        }
    }

    /////////////////////////////AFFICHAGE DES RÉSULTATS
    println("tableau de lettres:");//on peut faire println("du textte");
    println(nbLettres);//on peut faire println(une_variable);
    println("nbre total de lettres: "+nbTotal);//on peut faire println("du texte" + une_variable);
    println("min: "+ min(nbLettres)+"    max: "+ max(nbLettres));
    //min(tableau) permet d'avoir la plus petite valeur d'un tableau
    //max(tableau) permet d'avoir la plus grande valeur d'un tableau
    
}

void draw() {
    //  mode1();//on appelle la méthode "mode1()" située dans l'onglet "Modes". Choisir le mode entre 1 et 3

    /*
    // MODE 1 
    for (int i=0; i<26; i++) {
        fill(0);

        if(nbLettres[i] == max(nbLettres)){fill(255,0,0);} // highlight 

        float largeur =map(nbLettres[i], min(nbLettres), max(nbLettres), 5, width-40-60);
        rect(40, 25+i*25, largeur, 20);
        //la fonction map(variable, val1, val2, val3, val4) permet de faire des rapports de valeurs (rapport en croix par exemple)
        // ici, on s'en sert pour adapter la longueur de la barre à la taille de l'affichage
        
        //textes
        fill(0);
        textAlign(LEFT);
        text(char(65+i), 20, 39+i*25);//utilisation du code ASCII pour afficher le caractère
        textAlign(RIGHT);
        text(nbLettres[i], width-20, 39+i*25);
    }
    */

    // MODE 2 
    for (int i=0; i<26; i++) {
        fill(0);
        String[] fontList = PFont.list();
        fill(0, map(nbLettres[i], min(nbLettres), max(nbLettres), 255, 150));
        textFont(createFont(fontList[i], map(nbLettres[i], min(nbLettres), max(nbLettres), 20, 220)));
        textAlign(CENTER);
        text(char(65+i), // letter
            // X
            random(map(nbLettres[i], min(nbLettres), max(nbLettres), 20, 150), width-map(nbLettres[i], min(nbLettres), max(nbLettres), 20, 150)), 
            // Y
            random(map(nbLettres[i], min(nbLettres), max(nbLettres), 20, 150), height-map(nbLettres[i], min(nbLettres), max(nbLettres), 20, 150)));
    }

    noLoop();//pas besoin de faire tourner draw() en boucle une fois l'affichage fait

}
