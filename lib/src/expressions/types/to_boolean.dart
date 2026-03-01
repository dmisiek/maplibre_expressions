import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Converts the input value to a boolean.
///
/// The result is `false` when then input is an empty string, `0`, `false`,
/// `null`, or `NaN`; otherwise it is `true`.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#to-boolean
class ToBooleanExp extends MaplibreExp {
  const ToBooleanExp(this.value);

  /// Input value to convert.
  final MaplibreExp value;

  @override
  dynamic compose() {
    return ['to-boolean', value.compose()];
  }
}
