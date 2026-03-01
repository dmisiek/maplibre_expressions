import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes at expression', () {
    final actual = const MaplibreExp.at(
      index: .val(1),
      array: .val(['a', 'b', 'c']),
    ).compose();

    expect(actual, [
      'at',
      1,
      ['a', 'b', 'c'],
    ]);
  });
}
