import 'package:maplibre_expressions/maplibre_expressions.dart';

class ToStringExp extends MaplibreExp {
  const ToStringExp(this.value);

  final MaplibreExp value;

  @override
  dynamic compose() {
    return ['to-string', value.compose()];
  }
}
