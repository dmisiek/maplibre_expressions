import 'package:maplibre_expressions/maplibre_expressions.dart';

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
