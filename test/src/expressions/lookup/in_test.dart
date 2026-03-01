import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes in expression for arrays', () {
    final actual = const MaplibreExp.inExp(
      item: .val(1),
      array: .val([1, 2, 3]),
    ).compose();

    expect(actual, [
      'in',
      1,
      [1, 2, 3],
    ]);
  });

  test('composes in expression for strings', () {
    final actual = const MaplibreExp.inString(
      substring: .val('world'),
      string: .val('hello world'),
    ).compose();

    expect(actual, ['in', 'world', 'hello world']);
  });
}
