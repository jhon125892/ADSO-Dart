import 'dart:math';

class Ubicacion {
  String nombre;
  double lat;
  double lon;
  String categoria;
  String notas;
  Ubicacion(this.nombre, this.lat, this.lon, this.categoria, this.notas);
}

double distancia(Ubicacion a, Ubicacion b) {
  var dx = a.lat - b.lat;
  var dy = a.lon - b.lon;
  return sqrt(dx * dx + dy * dy);
}

void main() {
  List<Ubicacion> ubicaciones = [];
  ubicaciones.add(Ubicacion("Casa", 1.0, 2.0, "casa", "hogar"));
  ubicaciones.add(Ubicacion("Trabajo", 2.5, 4.0, "trabajo", "oficina"));
  var dist = distancia(ubicaciones[0], ubicaciones[1]);
  print("Distancia entre Casa y Trabajo: $dist");
}
