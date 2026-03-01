import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template within_exp}
/// Returns `true` if the evaluated feature is fully contained inside a
/// boundary of the input geometry, `false` otherwise.
///
/// The input value can be a valid GeoJSON of type Polygon, MultiPolygon,
/// Feature, or FeatureCollection.
///
/// Supported features for evaluation:
/// - Point: returns `false` if the point is on the boundary or outside.
/// - LineString: returns `false` if any part intersects the boundary, lies
/// outside, or has endpoints on the boundary.
///
/// Supported since:
/// * MapLibre GL JS: `1.9.0`
/// * MapLibre Native Android: `9.1.0`
/// * MapLibre Native iOS: `5.8.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#within
/// {@endtemplate}
class WithinExp extends MaplibreExp {
  /// {@macro within_exp}
  const WithinExp(this.geojson);

  /// GeoJSON object used as the containment boundary.
  final Map<String, dynamic> geojson;

  @override
  List<dynamic> compose() {
    return ['within', geojson];
  }
}
