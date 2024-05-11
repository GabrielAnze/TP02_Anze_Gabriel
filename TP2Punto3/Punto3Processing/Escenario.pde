class Escenario {
  int ancho;
  int alto;
  SpawnerVehiculo spawnerVehiculo;
  Sapo sapo;

  Escenario(int ancho, int alto) {
    this.ancho = ancho;
    this.alto = alto;
    spawnerVehiculo = new SpawnerVehiculo();
    sapo = new Sapo(ancho/2, alto - 50);
  }

  void setup() {
    size(ancho, alto);
    // Configuración adicional del escenario, si es necesario
  }

  void draw() {
    // Dibujar el escenario en cada frame
    background(255); // Por ejemplo, fondo blanco

    // Mostrar el sapo
    sapo.display();

    // Mostrar los vehículos generados por el spawner
    spawnerVehiculo.mostrarVehiculos();
  }
}
