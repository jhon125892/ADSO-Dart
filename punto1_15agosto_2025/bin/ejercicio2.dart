// IMPORT

class PersonaActividad {
  String nombre;
  int edad;
  double altura;

  //Constructor: inicializa las variables
  PersonaActividad(this.nombre, this.edad, this.altura); //Valor para las variables externas

  //Metodos u operaciones
  //Funcion para saludar
  void presentarse(){ // Funcion que no recibe valores y retorna valores
    print('Saludos a todos!!, mi nombre es $nombre');
  }
  
} // Fin clase PersonaActividad

void main(List<String> args) {
  PersonaActividad persona = PersonaActividad('Carlos', 34, 1.75); // Asignacion a los atributos


}
