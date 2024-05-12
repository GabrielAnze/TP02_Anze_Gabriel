class Nave extends GameObject implements IDisplayable, IController {
  Disparar disparador; // Instancia de la clase Disparar
  
  Nave(PImage imagen, float x, float y) {
    super(imagen, x, y);
    disparador = new Disparar(); // Inicializa el disparador
  }
  
  void display() {
    image(imagen, posicion.x, posicion.y);
  }
  
  void readCommand() {
    // Implementación de la lectura de comandos para la nave
    // Por ejemplo, podrías leer la entrada del teclado para controlar la nave
  }
  
  void disparar() {
    disparador.disparar(); // Llama al método disparar de la clase Disparar
  }
}  
