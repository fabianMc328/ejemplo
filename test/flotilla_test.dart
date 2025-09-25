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

  test('Lancha de tamaño 2 hacia la derecha desde (1,1)', () {
    // Arrange
    var barco = Barco(
      tipo: TipodeBarco.lancha,
      direccion: direccionesHacia.derecha,
      puntoinicial: Punto(columna: 1, fila: 1),
    );

    // Act
    var nuevoBarco = barco.agregarBarco(
      Punto(columna: 1, fila: 1),
      TipodeBarco.lancha,
      direccionesHacia.derecha,
    );

    // Assert
    expect(nuevoBarco.elementos.length, 2);

    expect(nuevoBarco.elementos[0].punto.columna, 1);
    expect(nuevoBarco.elementos[0].punto.fila, 1);

    expect(nuevoBarco.elementos[1].punto.columna, 2);
    expect(nuevoBarco.elementos[1].punto.fila, 1);
  });
}
