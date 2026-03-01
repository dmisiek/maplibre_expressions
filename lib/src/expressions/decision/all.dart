import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Returns `true` if all the inputs are `true`, `false` otherwise.
///
/// The inputs are evaluated in order, and evaluation is short-circuiting:
/// once an input expression evaluates to `false`, the result is `false`
/// and no further input expressions are evaluated.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#all
class AllExp extends MaplibreExp {
  const AllExp(this.expressions);

  /// Expressions evaluated by the `all` operator.
  final List<MaplibreExp> expressions;

  @override
  List<dynamic> compose() {
    return [
      'all',
      ...expressions.compose(),
    ];
  }
}
