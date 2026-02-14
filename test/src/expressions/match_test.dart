import 'package:maplibre_expressions/src/maplibre_expression.dart';
import 'package:test/test.dart';

void main() {
  test('primitive expression is correctly composed', () {
    final actual = const MaplibreExp.matchExp(
      .get('user.firstname'),
      [
        .new(
          label: .val('joe'),
          output: .val('doe'),
        ),
        .new(
          label: .val('kacper'),
          output: .val('adler'),
        ),
      ],
      fallback: .val('unknown'),
    ).compose();

    expect(
      actual,
      [
        'match',
        [
          'get',
          'firstname',
          ['get', 'user'],
        ],
        'joe',
        'doe',
        'kacper',
        'adler',
        'unknown',
      ],
    );
  });
}
