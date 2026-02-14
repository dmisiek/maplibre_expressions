import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Selects the first output whose corresponding test condition evaluates
/// to true, or the fallback value otherwise.
class CaseExp extends MaplibreExp {
  const CaseExp(
    this.conditions, {
    required this.fallback,
  });

  final List<Condition> conditions;
  final MaplibreExp fallback;

  @override
  dynamic compose() {
    return [
      'case',
      ...conditions.expand((e) => e.compose()),
      fallback.compose(),
    ];
  }
}

class Condition {
  const Condition(this.condition, this.output);

  final MaplibreExp condition;
  final MaplibreExp output;

  List<dynamic> compose() {
    return [
      condition.compose(),
      output.compose(),
    ];
  }
}
