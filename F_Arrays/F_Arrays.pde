// quelques fruits frais
String fruit_1 = "poire";
String fruit_2 = "pomme";
String fruit_3 = "raisin";

String[] panier = { fruit_1, fruit_2, fruit_3 }; // une liste ne peut contenir qu'un seul type d'élément (ici String)

// Quelques opérations
println("Mon panier :");

println("Chaque fruit:", panier[0], panier[1], panier[2]);
println("Il y a",panier.length, "fruits dans mon panier.");

panier=append(panier,"banane"); // ajouter une banane

println("J'ajoute une : ",panier[3]);
println("il y a",panier.length, "fruits dans mon panier.");

println("J'enlève le dernier fruit ajouté : ",panier[3]);
panier= shorten(panier); // supprime le dernier élément
println("il y a",panier.length, "fruits dans mon panier.");

println("Je remplace le 2ème fruit par des fraises");
panier[1] = "fraises";

println(panier);