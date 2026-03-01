import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template coalesce_exp}
/// Evaluates each expression in turn until the first non-null value is
/// obtained, and returns that value.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#coalesce
/// {@endtemplate}
class CoalesceExp extends MaplibreExp {
  /// {@macro coalesce_exp}
  const CoalesceExp(this.expressions);

  /// Candidate expressions checked in order.
  final List<MaplibreExp> expressions;

  @override
  List<dynamic> compose() {
    return [
      'coalesce',
      ...expressions.compose(),
    ];
  }
}
