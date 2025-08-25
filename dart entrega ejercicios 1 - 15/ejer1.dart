import 'dart:io';

void main() {
  stdout.write("Valor del pedido: ");
  var valor = double.parse(stdin.readLineSync()!);
  stdout.write("Tipo de servicio: ");
  var servicio = stdin.readLineSync()!;
  stdout.write("Calidad (excelente/bueno/regular): ");
  var calidad = stdin.readLineSync()!;
  var porcentaje = calidad == "excelente" ? 0.2 : calidad == "bueno" ? 0.15 : 0.1;
  var propina = valor * porcentaje;
  var total = valor + propina;
  print("Propina: \$${propina.toStringAsFixed(2)}");
  print("Total: \$${total.toStringAsFixed(2)}");
}
