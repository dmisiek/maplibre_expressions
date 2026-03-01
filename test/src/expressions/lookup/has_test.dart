import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes has expression', () {
    final actual = const MaplibreExp.has('name').compose();
    expect(actual, ['has', 'name']);
  });

  test('composes nested has expression using dot path', () {
    final actual = const MaplibreExp.has('user.name').compose();
    expect(actual, [
      'has',
      'name',
      ['has', 'user'],
    ]);
  });
}
