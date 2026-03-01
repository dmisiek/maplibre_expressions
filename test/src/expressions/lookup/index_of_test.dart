import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes index-of expression for arrays', () {
    final actual = const MaplibreExp.indexOf(
      .val(3),
      .val([1, 2, 3]),
    ).compose();

    expect(actual, [
      'index-of',
      3,
      [1, 2, 3],
    ]);
  });

  test('composes index-of expression for strings with fromIndex', () {
    final actual = const MaplibreExp.indexOfString(
      .val('a'),
      .val('banana'),
      .val(2),
    ).compose();

    expect(actual, ['index-of', 'a', 'banana', 2]);
  });
}
