
class Notificacion {
  String titulo;
  String mensaje;
  String tipo;
  DateTime fechaHora;
  bool leida;
  Notificacion(this.titulo, this.mensaje, this.tipo)
      : fechaHora = DateTime.now(),
        leida = false;
}

void main() {
  List<Notificacion> notificaciones = [];
  notificaciones.add(Notificacion("Alerta", "Batería baja", "advertencia"));
  notificaciones.add(Notificacion("Info", "Actualización lista", "info"));
  notificaciones[0].leida = true;
  var filtradas = notificaciones.where((n) => n.tipo == "info");
  print("Total: ${notificaciones.length}");
  print("Leídas: ${notificaciones.where((n) => n.leida).length}");
  print("No leídas: ${notificaciones.where((n) => !n.leida).length}");
  print("Filtradas tipo info: ${filtradas.length}");
}
