import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes ==', () {
    final actual = const MaplibreExp.equals(.get('a'), .get('b')).compose();

    expect(actual, [
      '==',
      ['get', 'a'],
      ['get', 'b'],
    ]);
  });

  test('composes !=', () {
    final actual = const MaplibreExp.notEquals(.get('a'), .get('b')).compose();

    expect(actual, [
      '!=',
      ['get', 'a'],
      ['get', 'b'],
    ]);
  });

  test('composes >', () {
    final actual = const MaplibreExp.gt(.get('a'), .get('b')).compose();

    expect(actual, [
      '>',
      ['get', 'a'],
      ['get', 'b'],
    ]);
  });

  test('composes >=', () {
    final actual = const MaplibreExp.gte(.get('a'), .get('b')).compose();

    expect(actual, [
      '>=',
      ['get', 'a'],
      ['get', 'b'],
    ]);
  });

  test('composes <', () {
    final actual = const MaplibreExp.ls(.get('a'), .get('b')).compose();

    expect(actual, [
      '<',
      ['get', 'a'],
      ['get', 'b'],
    ]);
  });

  test('composes <=', () {
    final actual = const MaplibreExp.lse(.get('a'), .get('b')).compose();

    expect(actual, [
      '<=',
      ['get', 'a'],
      ['get', 'b'],
    ]);
  });
}
