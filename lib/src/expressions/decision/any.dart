import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template any_exp}
/// Returns `true` if any of the inputs are `true`, `false` otherwise.
///
/// The inputs are evaluated in order, and evaluation is short-circuiting:
/// once an input expression evaluates to `true`, the result is `true`
/// and no further input expressions are evaluated.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#any
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// {@endtemplate}
class AnyExp extends MaplibreExp {
  /// {@macro any_exp}
  const AnyExp(this.inputs);

  /// Expressions evaluated by the `any` operator.
  final List<MaplibreExp> inputs;

  @override
  List<dynamic> compose() {
    return [
      'any',
      ...inputs.compose(),
    ];
  }
}
