import 'package:maplibre_expressions/maplibre_expressions.dart';

class GlobalStateExp extends MaplibreExp {
  const GlobalStateExp(this.propertyName);

  final String propertyName;

  @override
  dynamic compose() {
    return ['global-state', propertyName];
  }
}
