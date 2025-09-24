import 'dart:math';

class Punto{
final int columna;
final int fila;

  Punto({required this.columna, required this.fila});

int distancia(Punto otro){
int dColumnas = columna - otro.columna;
int dFiles = fila - otro.fila;
num Hipo = pow(dColumnas,2)+pow(dFiles,2);
num raiz = sqrt(Hipo);
return raiz.toInt();




  
}}