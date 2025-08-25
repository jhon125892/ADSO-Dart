import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Ingrese contraseña: ");
  var pass = stdin.readLineSync()!;
  var puntos = 0;
  if (pass.length >= 8) puntos++;
  if (pass.contains(RegExp(r'[A-Z]'))) puntos++;
  if (pass.contains(RegExp(r'[a-z]'))) puntos++;
  if (pass.contains(RegExp(r'[0-9]'))) puntos++;
  if (pass.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) puntos++;
  var nivel = ["Débil","Media","Fuerte","Muy fuerte"];
  print("Nivel: ${nivel[min(puntos-1,3)]}");
}
