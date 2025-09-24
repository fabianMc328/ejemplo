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
}

Barco barco = Barco(
  tipo: TipodeBarco.bote, 
  direccion: direccionesHacia.arriba, 
  puntoinicial: Punto(columna: 0, fila: 0)

);



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