import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template to_number_exp}
/// Converts the input value to a number, if possible.
///
/// - If the input is null or false, the result is 0.
/// - If the input is true, the result is 1.
/// - If the input is a string, it is converted to a number  as specified by
///   the "ToNumber Applied to the String Type" algorithm of the ECMAScript
///   Language Specification.
/// - If multiple values are provided, each one is evaluated in order until the
///   first successful conversion is obtained. If none of the inputs can be
///   converted, the expression is an error.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#to-number
/// {@endtemplate}
class ToNumberExp extends MaplibreExp {
  /// {@macro to_number_exp}
  const ToNumberExp(this.values);

  /// Conversion candidates evaluated from left to right.
  final List<MaplibreExp> values;

  @override
  List<dynamic> compose() {
    return ['to-number', ...values.compose()];
  }
}
