class Enemigo extends GameObject implements IMoveable, IDisplayable {
  Enemigo(PImage imagen, float x, float y) {
    super(imagen, x, y);
  }
  
  void display() {
    image(imagen, posicion.x, posicion.y);
  }
  
  void mover(float x, float y) {
    posicion.x += x;
    posicion.y += y;
  }
}
