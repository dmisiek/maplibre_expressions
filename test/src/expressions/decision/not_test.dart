import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes logical negation', () {
    final actual = const MaplibreExp.not(.has('point_count')).compose();

    expect(actual, [
      '!',
      ['has', 'point_count'],
    ]);
  });
}
