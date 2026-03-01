import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template get_exp}
/// Retrieves a property value from the current feature's properties, or from
/// another object if a second argument is provided.
///
/// Returns `null` if the requested property is missing.
///
/// Package specific:
/// - access nested properties using dot path instead 'object' property,
///   e.g: 'user.name' as equivalent for ['get, 'name', ['get', 'user']]
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#get
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// {@endtemplate}
class GetExp extends MaplibreExp {
  /// {@macro get_exp}
  const GetExp(this.path);

  final String path;

  @override
  List<dynamic> compose() {
    return path
        .split('.')
        .map((e) => ['get', e])
        .fold(
          [],
          (previousValue, element) => [
            ...element,
            if (previousValue.isNotEmpty) previousValue,
          ],
        );
  }
}
