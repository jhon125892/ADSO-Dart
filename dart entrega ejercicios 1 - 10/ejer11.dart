
class Usuario {
  String nombre;
  List<Curso> cursos = [];
  Usuario(this.nombre);
  void inscribir(Curso c) => cursos.add(c);
}

class Curso {
  String titulo;
  List<Leccion> lecciones = [];
  Curso(this.titulo);
}

class Leccion {
  String titulo;
  bool completada = false;
  Leccion(this.titulo);
}

void main() {
  var u = Usuario("Ana");
  var c = Curso("Dart Básico");
  c.lecciones.add(Leccion("Introducción"));
  c.lecciones.add(Leccion("Variables"));
  u.inscribir(c);
  c.lecciones[0].completada = true;
  print("${u.nombre} inscrita en ${u.cursos[0].titulo}");
  print("Lección completada: ${c.lecciones[0].titulo}");
}
