import 'package:maplibre_expressions/maplibre_expressions.dart';

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
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#within
///
/// Supported since:
/// * MapLibre GL JS: `1.9.0`
/// * MapLibre Native Android: `9.1.0`
/// * MapLibre Native iOS: `5.8.0`
class WithinExp extends MaplibreExp {
  const WithinExp(this.geojson);

  /// GeoJSON object used as the containment boundary.
  final Map<String, dynamic> geojson;

  @override
  List<dynamic> compose() {
    return ['within', geojson];
  }
}
