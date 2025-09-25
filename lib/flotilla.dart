import 'punto.dart';
import 'elemento.dart';

enum TipodeBarco {bote, lancha, submarino, crucero, portaaviones}
enum direccionesHacia{arriba, abajo, izquierda, derecha}

class Barco{
final TipodeBarco tipo;
final direccionesHacia direccion;
final Punto puntoinicial;
List <Elemento> elementos = [];
Barco(
  {required this.tipo, 
  required this.direccion, 
  required this.puntoinicial});

 Barco agregarBarco(Punto punto, TipodeBarco tipo, direccionesHacia direccion) {
  
    int tamanio;
    switch (tipo) {
      case TipodeBarco.bote:
        tamanio = 1;
        break;
      case TipodeBarco.lancha:
        tamanio = 2;
        break;
      case TipodeBarco.submarino:
        tamanio = 3;
        break;
      case TipodeBarco.crucero:
        tamanio = 4;
        break;
      case TipodeBarco.portaaviones:
        tamanio = 5;
        break;
    }

   for (int i = 0; i < tamanio; i++) {
  switch (direccion) {
    case direccionesHacia.arriba:
      elementos.add(
        Elemento(punto: Punto(columna: punto.columna, fila: punto.fila - i)),
      );
      break;
    case direccionesHacia.abajo:
      elementos.add(
        Elemento(punto: Punto(columna: punto.columna, fila: punto.fila + i)),
      );
      break;
    case direccionesHacia.izquierda:
      elementos.add(
        Elemento(punto: Punto(columna: punto.columna - i, fila: punto.fila)),
      );
      break;
    case direccionesHacia.derecha:
      elementos.add(
        Elemento(punto: Punto(columna: punto.columna + i, fila: punto.fila)),
      );
      break;
  }
}

    return this;
  }
}





class Flotilla {

  List<Barco> _barcos;
  int get cantidad => _barcos.length;
  Flotilla(List<Barco> this._barcos){
  if(_barcos.length!=5)throw FlotillaCantidadException();
  if(_barcos.map((e) => e.tipo).toSet().length!=5)throw FlotillaTiposException();
}





}
class FlotillaCantidadException extends Error{
  
}
class FlotillaTiposException extends Error{
  
}