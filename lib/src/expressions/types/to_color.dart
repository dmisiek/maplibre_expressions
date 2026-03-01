import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Converts the input value to a color.
///
/// - If multiple values are provided, each one is evaluated in order until the
/// first successful conversion is obtained.
/// - If none of the inputs can be converted, the expression is an error.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#to-color
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
class ToColorExp extends MaplibreExp {
  const ToColorExp(this.values);

  final List<MaplibreExp> values;

  @override
  List<dynamic> compose() {
    return ['to-color', ...values.compose()];
  }
}
