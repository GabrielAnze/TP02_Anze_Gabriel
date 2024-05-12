class GameObject {
  PImage imagen;
  PVector posicion;
  
  GameObject(PImage imagen, float x, float y) {
    this.imagen = imagen;
    this.posicion = new PVector(x, y);
  }
  
  void draw() {
    image(imagen, posicion.x, posicion.y);
  }
}
