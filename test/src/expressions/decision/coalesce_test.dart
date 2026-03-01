import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes coalesce expression with fallbacks', () {
    final actual = const MaplibreExp.coalesce([
      .get('nickname'),
      .get('name'),
      .val('Anonymous'),
    ]).compose();

    expect(actual, [
      'coalesce',
      ['get', 'nickname'],
      ['get', 'name'],
      'Anonymous',
    ]);
  });
}
