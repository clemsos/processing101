// init
void setup() {

  size(500, 500);
  color(0);
  frameRate(24); // 10 par défaut

  println("c'est parti");
}

void draw() {
  
  println("décompte : ", frameCount); // décompte des images
  println("heure :", hour(), minute(), second()); // affiche l'heure
  println("souris X: ", mouseX, "souris Y: ",  mouseY); // affiche les coordonnées de la souris
  
  line(random(50,450),random(50,450),random(50,450),random(50,450)); // random(high) or random(low, high)
}

