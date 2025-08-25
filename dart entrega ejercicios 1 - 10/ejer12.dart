
class Usuario {
  String nombre;
  Usuario(this.nombre);
}

class Libro {
  String titulo;
  String autor;
  Libro(this.titulo, this.autor);
}

class Intercambio {
  Usuario de;
  Usuario para;
  Libro libro;
  Intercambio(this.de, this.para, this.libro);
}

class Resena {
  Usuario usuario;
  String texto;
  int estrellas;
  Resena(this.usuario, this.texto, this.estrellas);
}

void main() {
  var u1 = Usuario("Luis");
  var u2 = Usuario("Maria");
  var l1 = Libro("1984", "Orwell");
  var inter = Intercambio(u1, u2, l1);
  var r = Resena(u2, "Excelente intercambio", 5);
  print("${inter.de.nombre} dio '${inter.libro.titulo}' a ${inter.para.nombre}");
  print("Reseña: ${r.texto} - ${r.estrellas} estrellas");
}
