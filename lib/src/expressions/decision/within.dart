import 'package:maplibre_expressions/maplibre_expressions.dart';

class WithinExp extends MaplibreExp {
  const WithinExp(this.geojson);

  final Map<String, dynamic> geojson;

  @override
  dynamic compose() {
    return ['within', geojson];
  }
}
