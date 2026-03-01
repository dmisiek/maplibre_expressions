import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Converts the input value to a color.
///
/// - If multiple values are provided, each one is evaluated in order until the
/// first successful conversion is obtained.
/// - If none of the inputs can be converted, the expression is an error.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#to-color
class ToColorExp extends MaplibreExp {
  const ToColorExp(this.values);

  final List<MaplibreExp> values;

  @override
  dynamic compose() {
    return ['to-number', ...values.compose()];
  }
}
