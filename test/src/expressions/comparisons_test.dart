import 'package:maplibre_expressions/src/maplibre_expression.dart';
import 'package:test/test.dart';

void main() {
  dynamic getExpected(String sign) => [
    sign,
    ['get', 'test'],
    0,
  ];

  test("[==]'s primitive expression is correctly composed", () {
    final actual = const MaplibreExp.equals(
      .get('test'),
      .val(0),
    ).compose();

    expect(actual, getExpected('=='));
  });

  test("[!=]'s primitive expression is correctly composed", () {
    final actual = const MaplibreExp.notEquals(
      .get('test'),
      .val(0),
    ).compose();

    expect(actual, getExpected('!='));
  });

  test("[>]'s primitive expression is correctly composed", () {
    final actual = const MaplibreExp.gt(
      .get('test'),
      .val(0),
    ).compose();

    expect(actual, getExpected('>'));
  });

  test("[>=]'s primitive expression is correctly composed", () {
    final actual = const MaplibreExp.gte(
      .get('test'),
      .val(0),
    ).compose();

    expect(actual, getExpected('>='));
  });

  test("[<]'s primitive expression is correctly composed", () {
    final actual = const MaplibreExp.ls(
      .get('test'),
      .val(0),
    ).compose();

    expect(actual, getExpected('<'));
  });

  test("[<=]'s primitive expression is correctly composed", () {
    final actual = const MaplibreExp.lse(
      .get('test'),
      .val(0),
    ).compose();

    expect(actual, getExpected('<='));
  });
}
