import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes image expression', () {
    final actual = const MaplibreExp.image(.val('my-icon')).compose();
    expect(actual, ['image', 'my-icon']);
  });
}
