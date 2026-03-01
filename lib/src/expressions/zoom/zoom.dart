import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template zoom_exp}
/// Gets the current zoom level.
///
/// Note that in style layout and paint properties, ["zoom"] may only appear as
/// the input to a top-level "step" or "interpolate" expression.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#zoom
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// {@endtemplate}
class ZoomExp extends MaplibreExp {
  /// {@macro zoom_exp}
  const ZoomExp();

  @override
  List<dynamic> compose() {
    return ['zoom'];
  }
}
