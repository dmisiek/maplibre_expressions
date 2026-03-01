import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template case_exp}
/// Selects the first output whose corresponding test condition evaluates to
/// true, or the fallback value otherwise.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#case
/// {@endtemplate}
class CaseExp extends MaplibreExp {
  /// {@macro case_exp}
  const CaseExp({
    required this.cases,
    required this.fallback,
  });

  /// Ordered condition-output pairs checked from left to right.
  final List<Case> cases;

  /// Value returned when no condition evaluates to `true`.
  final MaplibreExp fallback;

  @override
  List<dynamic> compose() {
    return [
      'case',
      ...cases.expand((e) => e.compose()),
      fallback.compose(),
    ];
  }
}

/// Represents one `case` branch: `condition` followed by `output`.
class Case {
  const Case({
    required this.condition,
    required this.output,
  });

  /// Condition expression for this branch.
  final MaplibreExp condition;

  /// Output expression returned when [condition] is `true`.
  final MaplibreExp output;

  List<dynamic> compose() {
    return [
      condition.compose(),
      output.compose(),
    ];
  }
}
