class Dado extends GameObject {
  
  private int value;
  
   public void display() {
  }
  

  public Dado(float x, float y) {
    super(x, y);
  }

  public void generateValue() {
    value = int(random(1, 7));
  }
}
