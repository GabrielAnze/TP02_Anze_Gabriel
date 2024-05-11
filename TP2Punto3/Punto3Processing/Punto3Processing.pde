class Juego {
  Escenario escenario;
  Sapo sapo;

  void setup() {
    size(800, 600);
    escenario = new Escenario(width, height);
    escenario.setup();
    sapo = escenario.sapo;
  }

  void draw() {
    escenario.draw();
  }

  void keyPressed() {
    // Lógica para manejar eventos de teclado
    // Por ejemplo, podrías enviar la tecla presionada al sapo
    sapo.keyPressed();
  }
}
