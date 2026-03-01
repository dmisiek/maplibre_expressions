import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes to-string expression', () {
    final actual = const MaplibreExp.toString(.get('speed')).compose();

    expect(actual, [
      'to-string',
      ['get', 'speed'],
    ]);
  });
}
