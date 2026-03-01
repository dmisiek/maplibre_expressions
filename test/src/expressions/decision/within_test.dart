import 'package:maplibre_expressions/maplibre_expressions.dart';
import 'package:test/test.dart';

void main() {
  test('composes within with geojson polygon', () {
    final polygon = <String, dynamic>{
      'type': 'Polygon',
      'coordinates': [
        [
          [0, 0],
          [0, 5],
          [5, 5],
          [5, 0],
          [0, 0],
        ],
      ],
    };

    final actual = MaplibreExp.within(polygon).compose();

    expect(actual, ['within', polygon]);
  });
}
