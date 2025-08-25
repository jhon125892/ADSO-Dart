
class Organizador {
  String nombre;
  Organizador(this.nombre);
}

class Evento {
  String titulo;
  String ubicacion;
  List<Participante> participantes = [];
  Evento(this.titulo, this.ubicacion);
}

class Participante {
  String nombre;
  Participante(this.nombre);
}

void main() {
  var org = Organizador("Lucia");
  var e = Evento("Feria Local", "Plaza Central");
  e.participantes.add(Participante("Ana"));
  e.participantes.add(Participante("Pedro"));
  print("Organizador: ${org.nombre}");
  print("Evento: ${e.titulo} en ${e.ubicacion}");
  print("Participantes: ${e.participantes.map((p) => p.nombre).join(', ')}");
}
