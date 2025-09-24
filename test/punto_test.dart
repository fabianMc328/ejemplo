import 'package:test/test.dart';
import 'package:ejemplo/punto.dart';

void main() {
  test('1.1) y 2,1) deben estar a 1 de distancia', () async {
    Punto p1 = Punto(columna: 1, fila: 1);
    Punto p2 = Punto(columna: 2, fila: 1);
    expect(p1.distancia(p2), equals(1));
  });
  test('1.1) y 2,2) deben estar a 1 de distancia', () async {
    Punto p1 = Punto(columna: 1, fila: 1);
    Punto p2 = Punto(columna: 2, fila: 2);
    expect(p1.distancia(p2), equals(1));
  });

   test('2.2) y 3,1) deben estar a 1 de distancia', () async {
    Punto p1 = Punto(columna: 2, fila: 2);
    Punto p2 = Punto(columna: 3, fila: 1);
    expect(p1.distancia(p2), equals(1));
  });

   test('2.1) y 1,1) deben estar a 1 de distancia', () async {
    Punto p1 = Punto(columna: 2, fila: 1);
    Punto p2 = Punto(columna: 1, fila: 1);
    expect(p1.distancia(p2), equals(1));
  });

   test('1.1) y 5,1) deben estar a 1 de distancia', () async {
    Punto p1 = Punto(columna: 1, fila: 1);
    Punto p2 = Punto(columna: 5, fila: 1);
    expect(p1.distancia(p2), equals(4));
  });
}