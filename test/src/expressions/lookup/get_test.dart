import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes get expression', () {
    final actual = const MaplibreExp.get('name').compose();
    expect(actual, ['get', 'name']);
  });

  test('composes nested get expression using dot path', () {
    final actual = const MaplibreExp.get('user.name').compose();
    expect(actual, [
      'get',
      'name',
      ['get', 'user'],
    ]);
  });
}
