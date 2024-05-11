class JuegoShooter {
  Shooter shooter;
  ArrayList<Asteroide> asteroides;
  Joypad joypad;
  HUD hud;

  JuegoShooter() {
    // Inicializa las instancias de las clases
    shooter = new Shooter(width/2, height/2, loadImage("shooter.png"), 5, 3); // Por ejemplo, un Shooter con 3 vidas
    asteroides = new ArrayList<Asteroide>();
    joypad = new Joypad();
    hud = new HUD(shooter.vidas);
  }

  void update() {
    // Actualiza el estado del juego
    shooter.update();
    // Actualiza el estado de los asteroides
    for (Asteroide asteroide : asteroides) {
      asteroide.update();
    }
    // Actualiza el HUD con las vidas del Shooter
    hud.vidas = shooter.vidas;
  }

  void display() {
    // Dibuja los elementos del juego en la pantalla
    background(255);
    // Dibuja el Shooter
    shooter.display();
    // Dibuja los asteroides
    for (Asteroide asteroide : asteroides) {
      asteroide.display();
    }
    // Dibuja el HUD
    hud.display();
  }

  void keyPressed() {
    // Maneja los eventos de teclado
    joypad.keyPressed(key);
  }

  void keyReleased() {
    // Maneja los eventos de teclado
    joypad.keyReleased(key);
  }
}
