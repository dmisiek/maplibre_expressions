import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes slice expression for arrays', () {
    final actual = const MaplibreExp.slice(
      .val([1, 2, 3, 4]),
      .val(1),
      .val(3),
    ).compose();

    expect(actual, [
      'slice',
      [1, 2, 3, 4],
      1,
      3,
    ]);
  });

  test('composes slice expression for strings', () {
    final actual = const MaplibreExp.sliceString(
      .val('hello'),
      .val(1),
      .val(4),
    ).compose();

    expect(actual, ['slice', 'hello', 1, 4]);
  });
}
