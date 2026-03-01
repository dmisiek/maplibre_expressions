import 'package:maplibre_expressions/maplibre_expressions.dart';

class ZoomExp extends MaplibreExp {
  const ZoomExp();

  @override
  List<dynamic> compose() {
    return ['zoom'];
  }
}
