import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Gets the length of an array or string. In a string, a UTF-16 surrogate pair
/// counts as a single position.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#length
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
class LengthExp extends MaplibreExp {
  const LengthExp(this.arrayOrString);

  final MaplibreExp arrayOrString;

  @override
  List<dynamic> compose() {
    return ['length', arrayOrString];
  }
}
