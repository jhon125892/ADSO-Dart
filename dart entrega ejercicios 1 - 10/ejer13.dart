
class Usuario {
  String nombre;
  List<Cuenta> cuentas = [];
  Usuario(this.nombre);
}

class Cuenta {
  String nombre;
  double saldo;
  List<Transaccion> transacciones = [];
  Cuenta(this.nombre, this.saldo);
}

class Transaccion {
  String categoria;
  double monto;
  Transaccion(this.categoria, this.monto);
}

void main() {
  var u = Usuario("Carlos");
  var c = Cuenta("Ahorros", 1000);
  c.transacciones.add(Transaccion("Comida", -50));
  c.transacciones.add(Transaccion("Sueldo", 500));
  u.cuentas.add(c);
  var total = c.transacciones.fold(0.0, (s, t) => s + t.monto);
  print("${u.nombre} - Cuenta: ${c.nombre}");
  print("Saldo final: ${c.saldo + total}");
}
