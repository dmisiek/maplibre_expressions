import 'package:maplibre_expressions/maplibre_expressions.dart';

class ToBooleanExp extends MaplibreExp {
  const ToBooleanExp(this.value);

  final MaplibreExp value;

  @override
  dynamic compose() {
    return ['to-boolean', value.compose()];
  }
}
