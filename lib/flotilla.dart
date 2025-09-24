

enum TipodeBarco {bote, lancha, submarino, crucero, portaaviones}
enum direccionesHacia{arriba, abajo, izquierda, derecha}

class Barco{
TipodeBarco tipo;
Barco(this.tipo);


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