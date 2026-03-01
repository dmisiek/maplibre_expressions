import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Selects the output whose label value matches the input value, or the
/// fallback value if no match is found.
///
/// The input can be any expression (for example, `["get", "building_type"]`).
///
/// Each label must be either:
/// - a single literal value; or
/// - an array of literal values, where at least one matches.
///
/// Labels must be unique literals. Arrays cannot contain duplicate literals.
/// Fallback can be any expression.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#match
class MatchExp extends MaplibreExp {
  const MatchExp(
    this.input,
    this.cases, {
    required this.fallback,
  });

  /// Input value compared with each case label.
  final MaplibreExp input;

  /// Label-output pairs checked for a match.
  final List<MatchCase> cases;

  /// Output used when no label matches [input].
  final MaplibreExp fallback;

  @override
  dynamic compose() {
    return [
      'match',
      input.compose(),
      ...cases.expand((e) => e.compose()),
      fallback.compose(),
    ];
  }
}

/// Represents one `match` branch: `label` followed by `output`.
class MatchCase {
  const MatchCase({
    required this.label,
    required this.output,
  });

  /// Label expression to compare with input.
  final MaplibreExp label;

  /// Output expression returned when [label] matches input.
  final MaplibreExp output;

  List<dynamic> compose() {
    return [
      label.compose(),
      output.compose(),
    ];
  }
}
