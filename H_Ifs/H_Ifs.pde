String texte = "Longtemps, je me suis couché de bonne heure. Parfois, à peine ma bougie éteinte, mes yeux se fermaient si vite que je n'avais pas le temps de me dire : « Je m'endors. » Et, une demi-heure après, la pensée qu'il était temps de chercher le sommeil m'éveillait ; je voulais poser le volume que je croyais avoir dans les mains et souffler ma lumière ; je n'avais pas cessé en dormant de faire des réflexions sur ce que je venais de lire, mais ces réflexions avaient pris un tour particulier ; il me semblait que j'étais moi-même ce dont parlait l'ouvrage : une église, un quatuor, la rivalité de François Ier et de Charles-Quint. Cette croyance survivait pendant quelques secondes à mon réveil ; elle ne choquait pas ma raison, mais pesait comme des écailles sur mes yeux et les empêchait de se rendre compte que le bougeoir n'était plus allumé. Puis elle commençait à me devenir inintelligible, comme après la métempsycose les pensées d'une existence antérieure ; le sujet du livre se détachait de moi, j'étais libre de m'y appliquer ou non ; aussitôt je recouvrais la vue et j'étais bien étonné de trouver autour de moi une obscurité, douce et reposante pour mes yeux, mais peut-être plus encore pour mon esprit, à qui elle apparaissait comme une chose sans cause, incompréhensible, comme une chose vraiment obscure. Je me demandais quelle heure il pouvait être ; j'entendais le sifflement des trains qui, plus ou moins éloigné, comme le chant d'un oiseau dans une forêt, relevant les distances, me décrivait l'étendue de la campagne déserte où le voyageur se hâte vers la station prochaine ; et le petit chemin qu'il suit va être gravé  dans son souvenir par l'excitation qui doit à des lieux nouveaux, à des actes inaccoutumés, à la causerie récente et aux adieux sous la lampe étrangère qui le suivent encore dans le silence de la nuit, à la douceur prochaine du retour.";

String[] mots = split(texte, " ");        // split(mon_texte, mon_séparateur)

println(mots.length, "mots");

int nombre_de_mots_contenant_A=0;

String mot_a_chercher="allo";
int nombre_de_fois=0;

// la longueur des mots du texte 
for (int j = 0; j < mots.length; ++j) { // passer par chaque élément du tableau
    
  String mot=mots[j];
  // println("Le mot", j, "a pour longueur", mot.length()) ;
  
  if(mot.equals(mot_a_chercher)) {  // l'opérateur 'equals' permet de comparer 2 mots 
    nombre_de_fois++;
  }
  
  // le mot contient la lettre A
  int lettre_A_dans_le_mot = mot.indexOf("a"); // indexOf permet d'identifier une lettre dans une String
  if( lettre_A_dans_le_mot != -1) { 
    nombre_de_mots_contenant_A++;
  }

}
println("le mot '",mot_a_chercher,"' est utilisé", nombre_de_fois, "fois");

println(nombre_de_mots_contenant_A, "mots parmi", mots.length, "contiennent la lettre A");