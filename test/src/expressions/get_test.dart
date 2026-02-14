import 'package:maplibre_expressions/src/maplibre_expression.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  test('primitive expression is correctly composed', () {
    final actual = MaplibreExp.get('test').compose();

    expect(
      actual,
      ['get', 'test'],
    );
  });

  test('primitive expression is correctly composed for nested property', () {
    final actual = MaplibreExp.get('object.test').compose();

    expect(
      actual,
      [
        'get',
        'test',
        ['get', 'object'],
      ],
    );
  });
}
