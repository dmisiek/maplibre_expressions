import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes global-state expression', () {
    final actual = const MaplibreExp.globalState('theme').compose();
    expect(actual, ['global-state', 'theme']);
  });
}
