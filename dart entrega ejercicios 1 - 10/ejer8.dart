import 'dart:math';

class Cancion {
  String titulo;
  String artista;
  int duracion;
  String genero;
  int calificacion;
  Cancion(this.titulo, this.artista, this.duracion, this.genero, this.calificacion);
}

class Playlist {
  String nombre;
  List<Cancion> canciones = [];
  Playlist(this.nombre);
  void agregar(Cancion c) => canciones.add(c);
  void quitar(String titulo) => canciones.removeWhere((c) => c.titulo == titulo);
  void reproducirAleatoria() {
    if (canciones.isNotEmpty) {
      var c = canciones[Random().nextInt(canciones.length)];
      print("Reproduciendo: ${c.titulo}");
    }
  }
  int duracionTotal() => canciones.fold(0, (s, c) => s + c.duracion);
}

void main() {
  var p = Playlist("Favoritos");
  p.agregar(Cancion("Song1", "Artista1", 200, "rock", 5));
  p.agregar(Cancion("Song2", "Artista2", 180, "pop", 4));
  p.reproducirAleatoria();
  print("Duracion total: ${p.duracionTotal()} segundos");
}
