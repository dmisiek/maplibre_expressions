import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes case expression with fallback', () {
    final actual = const MaplibreExp.caseExp(
      cases: [
        .new(
          condition: .lse(.get('temperature'), .val(0)),
          output: .val('freezing'),
        ),
        .new(
          condition: .lse(.get('temperature'), .val(20)),
          output: .val('cold'),
        ),
      ],
      fallback: .val('warm'),
    ).compose();

    expect(actual, [
      'case',
      [
        '<=',
        ['get', 'temperature'],
        0,
      ],
      'freezing',
      [
        '<=',
        ['get', 'temperature'],
        20,
      ],
      'cold',
      'warm',
    ]);
  });
}
