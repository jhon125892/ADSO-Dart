// IMPORT
import 'dart:io';
//
void main() {
 // seleccion

  
  print("\nHola!, aqui podras calcular las propinas de su servicio de delivery!");
  print("Porfavor, seleccione su servicio:");
  print("1. Comida");
  print("2. Farmacia");
  print("3. Supermercado");

print ("Servicio: ");
  int seleccion = 0;
  seleccion = int.parse(stdin.readLineSync()!);
// --------------- //

print("\nPorfavor, seleccione el servicio dado por el usuario:");
  print("1. Excelente");
  print("2. Bueno");
  print("3. Regular");

  int calificacionServicio = 0;
  calificacionServicio = int.parse(stdin.readLineSync()!);


  (print("Ingrese el valor del pedido: "));
  int valorPedido = 0;
  valorPedido = int.parse(stdin.readLineSync()!);

  double propinaFinal = 0;
  


    if (seleccion == 1){
    print("Has seleccionado el servicio de Comida");
    print("Tu propina sera de $propinaFinal");
  } else 
  if (seleccion == 2){
    print("Has seleccionado el servicio de Farmacia");
    print("Tu propina sera de $propinaFinal");
  } else 
  if (seleccion == 3){
    print("Has seleccionado el servicio de Supermercado");
    print("Tu propina sera de $propinaFinal");
  }
  
}