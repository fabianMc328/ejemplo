import 'package:test/test.dart';
import 'package:ejemplo/punto.dart';
import 'package:ejemplo/flotilla.dart';

void main() {
  test('Debe lanzar FlotillaCantidadException si hay menos de 5 barcos', () {
    expect(
      () => Flotilla([
        Barco(
          tipo: TipodeBarco.bote,
          direccion: direccionesHacia.derecha,
          puntoinicial: Punto(columna: 0, fila: 0),
        ),
        Barco(
          tipo: TipodeBarco.lancha,
          direccion: direccionesHacia.derecha,
          puntoinicial: Punto(columna: 1, fila: 0),
        ),
      ]),
      throwsA(isA<FlotillaCantidadException>()),
    );
  });

  test('Debe lanzar FlotillaTiposException si hay 5 barcos pero tipos repetidos', () {
    expect(
      () => Flotilla([
        Barco(
          tipo: TipodeBarco.bote,
          direccion: direccionesHacia.arriba,
          puntoinicial: Punto(columna: 0, fila: 0),
        ),
        Barco(
          tipo: TipodeBarco.bote,
          direccion: direccionesHacia.abajo,
          puntoinicial: Punto(columna: 1, fila: 0),
        ),
        Barco(
          tipo: TipodeBarco.bote,
          direccion: direccionesHacia.izquierda,
          puntoinicial: Punto(columna: 2, fila: 0),
        ),
        Barco(
          tipo: TipodeBarco.bote,
          direccion: direccionesHacia.derecha,
          puntoinicial: Punto(columna: 3, fila: 0),
        ),
        Barco(
          tipo: TipodeBarco.bote,
          direccion: direccionesHacia.arriba,
          puntoinicial: Punto(columna: 4, fila: 0),
        ),
      ]),
      throwsA(isA<FlotillaTiposException>()),
    );
  });

  test('Debe crear flotilla correctamente con 5 barcos de distintos tipos', () {
    final flotilla = Flotilla([
      Barco(
        tipo: TipodeBarco.bote,
        direccion: direccionesHacia.arriba,
        puntoinicial: Punto(columna: 0, fila: 0),
      ),
      Barco(
        tipo: TipodeBarco.lancha,
        direccion: direccionesHacia.abajo,
        puntoinicial: Punto(columna: 1, fila: 0),
      ),
      Barco(
        tipo: TipodeBarco.submarino,
        direccion: direccionesHacia.izquierda,
        puntoinicial: Punto(columna: 2, fila: 0),
      ),
      Barco(
        tipo: TipodeBarco.crucero,
        direccion: direccionesHacia.derecha,
        puntoinicial: Punto(columna: 3, fila: 0),
      ),
      Barco(
        tipo: TipodeBarco.portaaviones,
        direccion: direccionesHacia.arriba,
        puntoinicial: Punto(columna: 4, fila: 0),
      ),
    ]);

    expect(flotilla.cantidad, equals(5));
  });
}
