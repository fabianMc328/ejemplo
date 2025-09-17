

import 'package:test/test.dart';
import 'package:ejemplo/nombre.dart';
void main() {
  test('debe tener un minimo de longitud ', () async {
    expect(() => Nombre(''), throwsA(isA<longitudMinimaException>()));
  });


  test('debe tener un maximo de longitud ', () async {
    expect(() => Nombre('abcderfghjkloiua'), throwsA(isA<longitudMaximaException>()));
  });
}