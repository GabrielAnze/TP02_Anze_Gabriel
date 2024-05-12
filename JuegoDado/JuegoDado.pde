class JuegoDadoAap {
  Tablero tablero;
  Dado[] dadoArray;
  HUD hud;

  void setup() {
    size(400, 400);
    tablero = new Tablero(width/2, height/2);
    dadoArray = new Dado[0]; // Inicialmente no hay dados
    hud = new HUD();
  }

  void draw() {
    background(255);
    tablero.display();
    for (Dado dado : dadoArray) {
      dado.display();
    }
  }

  public void keyPressed() {
    if (key == ' ') {
      rollDado();
    }
  }

  void rollDado() {
    Dado newDado = new Dado(random(width), random(height));
    newDado.generateValue();
    dadoArray = (Dado[]) append(dadoArray, newDado);
    hud.displayValue(newDado);
  }
}
