class JuegoNave {
  Nave nave;
  ArrayList<Enemigo> enemigos;
  ArrayList<Asteroide> asteroides;
  
  JuegoNave() {
    // Inicializa la nave
    PImage imagenNave = loadImage("nave.png");
    nave = new Nave(imagenNave, width/2, height - 50);
    
    // Inicializa los enemigos
    enemigos = new ArrayList<Enemigo>();
    for (int i = 0; i < 5; i++) {
      PImage imagenEnemigo = loadImage("enemigo.png");
      float x = random(width);
      float y = random(-500, -50);
      Enemigo enemigo = new Enemigo(imagenEnemigo, x, y);
      enemigos.add(enemigo);
    }
    
    // Inicializa los asteroides
    asteroides = new ArrayList<Asteroide>();
    for (int i = 0; i < 10; i++) {
      PImage imagenAsteroide = loadImage("asteroide.png");
      float x = random(width);
      float y = random(-500, -50);
      Asteroide asteroide = new Asteroide(imagenAsteroide, x, y);
      asteroides.add(asteroide);
    }
  }
  
  void actualizar() {
    // Actualiza la nave
    nave.readCommand();
    
    // Actualiza los enemigos
    for (Enemigo enemigo : enemigos) {
      enemigo.mover(0, 1);
    }
    
    // Actualiza los asteroides
    for (Asteroide asteroide : asteroides) {
      asteroide.mover(0, 1);
    }
  }
  
  void mostrar() {
    // Muestra la nave
    nave.display();
    
    // Muestra los enemigos
    for (Enemigo enemigo : enemigos) {
      enemigo.display();
    }
    
    // Muestra los asteroides
    for (Asteroide asteroide : asteroides) {
      asteroide.display();
    }
  }
}
