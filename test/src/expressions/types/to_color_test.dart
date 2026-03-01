import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes to-color expression with fallback', () {
    final actual = const MaplibreExp.toColor([.get('color')]).compose();

    expect(actual, [
      'to-color',
      ['get', 'color'],
    ]);
  });
}
