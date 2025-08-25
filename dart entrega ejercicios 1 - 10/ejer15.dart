
class Cliente {
  String nombre;
  Cliente(this.nombre);
}

class Prestador {
  String nombre;
  Prestador(this.nombre);
}

class Servicio {
  String nombre;
  double precio;
  Servicio(this.nombre, this.precio);
}

class Solicitud {
  Cliente cliente;
  Prestador prestador;
  Servicio servicio;
  Solicitud(this.cliente, this.prestador, this.servicio);
}

class Calificacion {
  Cliente cliente;
  Prestador prestador;
  int estrellas;
  Calificacion(this.cliente, this.prestador, this.estrellas);
}

void main() {
  var cli = Cliente("Juan");
  var pre = Prestador("Sofia");
  var ser = Servicio("Limpieza", 30);
  var sol = Solicitud(cli, pre, ser);
  var cal = Calificacion(cli, pre, 5);
  print("${cli.nombre} solicitó ${ser.nombre} a ${pre.nombre} por \$${ser.precio}");
  print("Calificación: ${cal.estrellas} estrellas");
}
