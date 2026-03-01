import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template all_exp}
/// Returns `true` if all the inputs are `true`, `false` otherwise.
///
/// The inputs are evaluated in order, and evaluation is short-circuiting:
/// once an input expression evaluates to `false`, the result is `false`
/// and no further input expressions are evaluated.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#all
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// {@endtemplate}
class AllExp extends MaplibreExp {
  /// {@macro all_exp}
  const AllExp(this.inputs);

  /// Expressions evaluated by the `all` operator.
  final List<MaplibreExp> inputs;

  @override
  List<dynamic> compose() {
    return [
      'all',
      ...inputs.compose(),
    ];
  }
}
