abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print( 'estoy volando');
}

mixin Caminante {
  void caminar() => print( 'estoy caminando');
}

mixin Nadador {
  void nadar() => print( 'estoy nadando');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Ave with Nadador, Volador{}


void main() {
  
  final flipper = Delfin();
  print("Instanciando la clase Delfin y accediendo a sus funciones");
  flipper.nadar();
  
  final batman = Murcielago();
  print("Instanciando la clase Murcielago y accediendo a sus funciones");
  batman.caminar();
  batman.volar();
  
  final namor = Pato();
  print("Instanciando la clase pato y accediendo a sus funciones");
  namor.caminar();
  namor.nadar();
  namor.volar();

}

