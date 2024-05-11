class Sapo {
  PVector posicion;

  Sapo(float x, float y) {
    posicion = new PVector(x, y);
  }

  void display() {
    // Dibujar el sapo en su posición actual
    // Por ejemplo, podrías utilizar formas geométricas o imágenes para representar el sapo
    rectMode(CENTER);
    rect(posicion.x, posicion.y, 30, 20); // Ejemplo: dibuja un rectángulo en la posición del sapo
  }

  void mover(float velocidadX, float velocidadY) {
    // Mover el sapo según las velocidades proporcionadas
    posicion.x += velocidadX;
    posicion.y += velocidadY;
  }
}
