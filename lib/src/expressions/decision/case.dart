import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Selects the first output whose corresponding test condition evaluates
/// to true, or the fallback value otherwise.
class CaseExp extends MaplibreExp {
  const CaseExp(
    this.cases, {
    required this.fallback,
  });

  final List<Case> cases;
  final MaplibreExp fallback;

  @override
  dynamic compose() {
    return [
      'case',
      ...cases.expand((e) => e.compose()),
      fallback.compose(),
    ];
  }
}

class Case {
  const Case(this.condition, this.output);

  final MaplibreExp condition;
  final MaplibreExp output;

  List<dynamic> compose() {
    return [
      condition.compose(),
      output.compose(),
    ];
  }
}
