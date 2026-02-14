import 'package:maplibre_expressions/src/maplibre_expression.dart';
import 'package:test/test.dart';

void main() {
  test('primitive expression is correctly composed', () {
    final actual = const MaplibreExp.caseExp(
      [
        .new(
          .equals(.get('user.firstname'), .val('joe')),
          .val('doe'),
        ),
        .new(
          .equals(.get('user.lastname'), .val('doe')),
          .val('joe'),
        ),
      ],
      fallback: .val('unknown'),
    ).compose();

    expect(
      actual,
      [
        'case',
        [
          '==',
          [
            'get',
            'firstname',
            ['get', 'user'],
          ],
          'joe',
        ],
        'doe',
        [
          '==',
          [
            'get',
            'lastname',
            ['get', 'user'],
          ],
          'doe',
        ],
        'joe',
        'unknown',
      ],
    );
  });
}
