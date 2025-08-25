//

void main(){
  print("\n Sistema de notificaciones \n");
}

class Notificacion {
  String titulo;
  String mensaje;
  String tipo; //
  DateTime fechaHora;
  bool leida;

  Notificacion(this.titulo, this.mensaje, this.tipo)
    : fechaHora= DateTime.now(),
    leida= false;

}

List<Notificacion> notificaciones=[];

void agregarNotificacion(String titulo, String mensaje, String tipo) {
  notificaciones.add(Notificacion(titulo, mensaje, tipo));
}

void marcarComoLeida(int index) {
  if (index >= 0 && index < notificaciones.length){
    notificaciones[index].leida = true;
  }
}
