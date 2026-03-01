import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes to-number expression with fallback', () {
    final actual = const MaplibreExp.toNumber([.get('speed')]).compose();

    expect(actual, [
      'to-number',
      ['get', 'speed'],
    ]);
  });
}
