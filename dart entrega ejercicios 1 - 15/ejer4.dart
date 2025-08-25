import 'dart:io';

void main() {
  stdout.write("Nombre de la red: ");
  var ssid = stdin.readLineSync()!;
  stdout.write("Contraseña: ");
  var pass = stdin.readLineSync()!;
  stdout.write("Seguridad (WPA/WEP/abierta): ");
  var sec = stdin.readLineSync()!;
  var qr = "WIFI:S:$ssid;T:$sec;P:$pass;;";
  print("Cadena QR generada:");
  print(qr);
}
