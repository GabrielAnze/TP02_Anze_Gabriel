class Vehiculo {
  PVector posicion;

  Vehiculo(float x, float y) {
    posicion = new PVector(x, y);
  }

  void display() {
    // Dibujar el vehículo en su posición actual
    // Por ejemplo, podrías utilizar formas geométricas o imágenes para representar el vehículo
    ellipse(posicion.x, posicion.y, 20, 20); // Ejemplo: dibuja un círculo en la posición del vehículo
  }

  void mover(float velocidadX, float velocidadY) {
    // Mover el vehículo según las velocidades proporcionadas
    posicion.x += velocidadX;
    posicion.y += velocidadY;
  }
}
0 
