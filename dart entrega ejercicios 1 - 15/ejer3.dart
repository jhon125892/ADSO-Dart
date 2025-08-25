import 'dart:io';

void main() {
  stdout.write("Origen: ");
  var origen = stdin.readLineSync()!;
  stdout.write("Destino: ");
  var destino = stdin.readLineSync()!;
  stdout.write("Distancia (km): ");
  var km = double.parse(stdin.readLineSync()!);
  stdout.write("Medio (pie/bici/carro/transporte): ");
  var medio = stdin.readLineSync()!;
  stdout.write("Hora (pico/normal): ");
  var hora = stdin.readLineSync()!;
  var velocidad = medio == "pie" ? 5 : medio == "bici" ? 15 : medio == "carro" ? 40 : 25;
  var tiempo = km / velocidad * 60;
  if (hora == "pico") tiempo *= 1.5;
  var costo = medio == "carro" ? km * 0.5 : medio == "transporte" ? km * 0.3 : 0;
  print("Tiempo: ${tiempo.toStringAsFixed(2)} minutos");
  print("Costo: \$${costo.toStringAsFixed(2)}");
}
