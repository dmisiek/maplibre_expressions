import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes length expression', () {
    final actual = const MaplibreExp.length(.val('hello')).compose();
    expect(actual, ['length', 'hello']);
  });
}
