import 'package:test/test.dart';
import 'package:ejemplo/partida.dart';
void main() {
  test('al crearse debe marcarse creada', () {
   Partida partida = Partida();
    expect(partida.estado, Estado.creada);
  });
}