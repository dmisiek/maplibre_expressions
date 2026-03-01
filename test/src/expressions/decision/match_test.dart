import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes match expression with fallback', () {
    final actual = const MaplibreExp.match(
      input: .get('building_type'),
      cases: [
        .new(
          label: .val('residential'),
          output: .val('#f00'),
        ),
        .new(
          label: .val('commercial'),
          output: .val('#0f0'),
        ),
      ],
      fallback: .val('#000'),
    ).compose();

    expect(actual, [
      'match',
      ['get', 'building_type'],
      'residential',
      '#f00',
      'commercial',
      '#0f0',
      '#000',
    ]);
  });
}
