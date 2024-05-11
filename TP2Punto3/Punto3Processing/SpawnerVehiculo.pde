class SpawnerVehiculo {
  ArrayList<Vehiculo> vehiculos;

  SpawnerVehiculo() {
    vehiculos = new ArrayList<Vehiculo>();
  }

  void generarVehiculo(float x, float y) {
    // Generar un nuevo vehículo y agregarlo a la lista
    Vehiculo nuevoVehiculo = new Vehiculo(x, y);
    vehiculos.add(nuevoVehiculo);
  }

  void mostrarVehiculos() {
    // Mostrar todos los vehículos en la lista
    for (Vehiculo vehiculo : vehiculos) {
      vehiculo.display();
    }
  }
}
