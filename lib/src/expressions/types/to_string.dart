import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Converts the input value to a string.
///
/// - If the input is null, the result is "".
/// - If the input is a boolean, the result is "true" or "false".
/// - If the input is a number, it is converted to a string as specified by the
///   "NumberToString" algorithm of the ECMAScript Language Specification.
/// - If the input is a color, it is converted to a string of the form
///   "rgba(r,g,b,a)", where r, g, and b are numerals ranging from 0 to 255,
///   and a ranges from 0 to 1.
///
/// Otherwise, the input is converted to a string in the format specified by
/// the JSON.stringify function of the ECMAScript Language Specification.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#to-string
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
class ToStringExp extends MaplibreExp {
  const ToStringExp(this.value);

  /// Input value to convert.
  final MaplibreExp value;

  @override
  List<dynamic> compose() {
    return ['to-string', value.compose()];
  }
}
