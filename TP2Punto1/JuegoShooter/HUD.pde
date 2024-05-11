class HUD {
  int vidas;

  HUD(int vidas) {
    this.vidas = vidas;
  }

  void display() {
    // Dibujar el HUD en la pantalla
    fill(255);
    textSize(20);
    textAlign(RIGHT);
    text("Vidas: " + vidas, width - 10, 30);
  }
}
