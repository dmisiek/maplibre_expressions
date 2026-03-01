import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes any expression in documented order', () {
    final actual = const MaplibreExp.any([
      .gte(.get('mag'), .val(4)),
      .ls(.get('mag'), .val(5)),
    ]).compose();

    expect(actual, [
      'any',
      [
        '>=',
        ['get', 'mag'],
        4,
      ],
      [
        '<',
        ['get', 'mag'],
        5,
      ],
    ]);
  });
}
