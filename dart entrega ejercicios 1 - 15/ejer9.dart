
class Archivo {
  String nombre;
  int tamano;
  String tipo;
  DateTime fecha;
  String ruta;
  Archivo(this.nombre, this.tamano, this.tipo, this.ruta) : fecha = DateTime.now();
}

void main() {
  List<Archivo> archivos = [];
  archivos.add(Archivo("foto1.jpg", 1200, "imagen", "/fotos"));
  archivos.add(Archivo("doc.txt", 500, "texto", "/docs"));
  print("Lista:");
  archivos.forEach((a) => print("${a.nombre} - ${a.tamano}kb"));
  var busqueda = archivos.where((a) => a.tipo == "imagen");
  print("Imagenes: ${busqueda.length}");
  var total = archivos.fold(0, (s, a) => s + a.tamano);
  print("Espacio usado: ${total}kb");
}
