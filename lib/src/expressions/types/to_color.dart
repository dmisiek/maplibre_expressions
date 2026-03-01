import 'package:maplibre_expressions/maplibre_expressions.dart';

class ToColorExp extends MaplibreExp {
  const ToColorExp(this.values);

  final List<MaplibreExp> values;

  @override
  dynamic compose() {
    return ['to-number', ...values.compose()];
  }
}
