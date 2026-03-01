import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes to-boolean expression', () {
    final actual = const MaplibreExp.toBool(.val(1)).compose();
    expect(actual, ['to-boolean', 1]);
  });
}
