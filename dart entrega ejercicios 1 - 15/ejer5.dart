import 'dart:io';

void main() {
  stdout.write("Monto de la compra: ");
  var monto = double.parse(stdin.readLineSync()!);
  var descuento = monto <= 50 ? 0 : monto <= 100 ? 0.05 : monto <= 200 ? 0.1 : 0.15;
  var ahorro = monto * descuento;
  var total = (monto - ahorro) * 1.19;
  print("Descuento: ${descuento * 100}%");
  print("Ahorro: \$${ahorro.toStringAsFixed(2)}");
  print("Total final con IVA: \$${total.toStringAsFixed(2)}");
}
