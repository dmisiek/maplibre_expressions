import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Evaluates each expression in turn until the first non-null value is
/// obtained, and returns that value.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#coalesce
class CoalesceExp extends MaplibreExp {
  const CoalesceExp(this.expressions);

  /// Candidate expressions checked in order.
  final List<MaplibreExp> expressions;

  @override
  dynamic compose() {
    return [
      'coalesce',
      ...expressions.compose(),
    ];
  }
}
