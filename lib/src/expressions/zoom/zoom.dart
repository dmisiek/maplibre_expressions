import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Gets the current zoom level.
///
/// Note that in style layout and paint properties, ["zoom"] may only appear as
/// the input to a top-level "step" or "interpolate" expression.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#zoom
class ZoomExp extends MaplibreExp {
  const ZoomExp();

  @override
  List<dynamic> compose() {
    return ['zoom'];
  }
}
