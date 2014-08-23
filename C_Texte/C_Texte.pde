//Tout d'abord, initialisons une chaîne de caractères texte
String text;

void setup() {
    
    // afficher du texte dans la console
    print("Hello World !");

    //ensuite, on écrit notre texte
    text = "J'essaie de trouver le nombre de caractères de cette chaîne.";

    int nb_caracteres = text.length();// la longueur de la chaîne texte
    print("Nb de caractères : " + nb_caracteres);// concaténer et afficher

}