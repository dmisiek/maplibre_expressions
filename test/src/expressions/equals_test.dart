import 'package:maplibre_expressions/src/maplibre_expression.dart';
import 'package:test/test.dart';

void main() {
  test('primitive expression is correctly composed', () {
    final actual = const MaplibreExp.equals(
      MaplibreExp.get('test'),
      MaplibreExp.val(0),
    ).compose();

    expect(
      actual,
      [
        '==',
        ['get', 'test'],
        0,
      ],
    );
  });
}
