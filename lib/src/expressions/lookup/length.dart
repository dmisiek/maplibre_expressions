import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Gets the length of an array or string. In a string, a UTF-16 surrogate pair
/// counts as a single position.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#length
class LengthExp extends MaplibreExp {
  const LengthExp(this.arrayOrString);

  final MaplibreExp arrayOrString;

  @override
  dynamic compose() {
    return ['length', arrayOrString];
  }
}
