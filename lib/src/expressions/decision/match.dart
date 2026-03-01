import 'package:maplibre_expressions/maplibre_expressions.dart';

class MatchExp extends MaplibreExp {
  const MatchExp(
    this.input,
    this.cases, {
    required this.fallback,
  });

  final MaplibreExp input;
  final List<MatchCase> cases;
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

class MatchCase {
  const MatchCase({
    required this.label,
    required this.output,
  });

  final MaplibreExp label;
  final MaplibreExp output;

  List<dynamic> compose() {
    return [
      label.compose(),
      output.compose(),
    ];
  }
}
