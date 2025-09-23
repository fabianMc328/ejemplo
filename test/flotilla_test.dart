import 'dart:math';

import 'package:ejemplo/flotilla.dart';
import 'package:test/test.dart';

void main() {
  test('Debe lanzar FlotillaCantidadException si hay menos de 5 barcos', () {
    expect(
      () => Flotilla([
        Barco(TipodeBarco.bote),
        Barco(TipodeBarco.lancha),
      ]),
      throwsA(isA<FlotillaCantidadException>()),
    );
  });

  test('Debe lanzar FlotillaTiposException si hay 5 barcos pero tipos repetidos', () {
    expect(
      () => Flotilla([
        Barco(TipodeBarco.bote),
        Barco(TipodeBarco.bote),
        Barco(TipodeBarco.bote),
        Barco(TipodeBarco.bote),
        Barco(TipodeBarco.bote),
      ]),
      throwsA(isA<FlotillaTiposException>()),
    );
  });

  test('Debe crear flotilla correctamente con 5 barcos de distintos tipos', () {
    final flotilla = Flotilla([
      Barco(TipodeBarco.bote),
      Barco(TipodeBarco.lancha),
      Barco(TipodeBarco.submarino),
      Barco(TipodeBarco.crucero),
      Barco(TipodeBarco.portaaviones),
    ]);

    expect(flotilla.cantidad, equals(5));
  });
}
