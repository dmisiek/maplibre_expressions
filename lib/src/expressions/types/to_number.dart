import 'package:maplibre_expressions/maplibre_expressions.dart';

class ToNumberExp extends MaplibreExp {
  const ToNumberExp(this.values);

  final List<MaplibreExp> values;

  @override
  dynamic compose() {
    return ['to-number', ...values.compose()];
  }
}
