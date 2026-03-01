import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template to_boolean_exp}
/// Converts the input value to a boolean.
///
/// The result is `false` when then input is an empty string, `0`, `false`,
/// `null`, or `NaN`; otherwise it is `true`.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#to-boolean
/// {@endtemplate}
class ToBooleanExp extends MaplibreExp {
  /// {@macro to_boolean_exp}
  const ToBooleanExp(this.value);

  /// Input value to convert.
  final MaplibreExp value;

  @override
  List<dynamic> compose() {
    return ['to-boolean', value.compose()];
  }
}
