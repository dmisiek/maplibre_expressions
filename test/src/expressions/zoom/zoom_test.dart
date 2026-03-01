import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes zoom expression', () {
    final actual = const MaplibreExp.zoom().compose();
    expect(actual, ['zoom']);
  });
}
