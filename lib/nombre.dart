
class Nombre {
late Nombre candidato;

Nombre (String c){
  if (c.length <longitudMinimaPermitida) {
    throw longitudMinimaException();
  }
  if (c.length > longitudMaximaPermitida) {
    throw longitudMaximaException();
  }

}


}
const longitudMaximaPermitida = 15;
const longitudMinimaPermitida = 5;
class longitudMinimaException extends Error{
  
}

class longitudMaximaException extends Error{
  
}