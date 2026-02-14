import 'package:maplibre_expressions/src/maplibre_expression.dart';
import 'package:test/test.dart';

void main() {
  test('primitive expression is correctly composed', () {
    final actual = const MaplibreExp.coalesce([
      .get('user.firstname'),
      .get('user.lastname'),
    ]).compose();

    expect(
      actual,
      [
        'coalesce',
        [
          'get',
          'firstname',
          ['get', 'user'],
        ],
        [
          'get',
          'lastname',
          ['get', 'user'],
        ],
      ],
    );
  });
}
