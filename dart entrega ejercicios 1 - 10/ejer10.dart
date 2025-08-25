
class Resena {
  String usuario;
  int estrellas;
  String comentario;
  DateTime fecha;
  Resena(this.usuario, this.estrellas, this.comentario) : fecha = DateTime.now();
}

void main() {
  List<Resena> resenas = [];
  resenas.add(Resena("Ana", 5, "Excelente app"));
  resenas.add(Resena("Luis", 3, "Regular"));
  var promedio = resenas.fold(0, (s, r) => s + r.estrellas) / resenas.length;
  print("Promedio: ${promedio.toStringAsFixed(1)} estrellas");
  var filtradas = resenas.where((r) => r.estrellas >= 4);
  print("Reseñas positivas: ${filtradas.length}");
}
