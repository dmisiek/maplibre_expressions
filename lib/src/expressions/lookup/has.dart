import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template has_exp}
/// Tests for the presence of a property value in the current feature's
/// properties, or from another object if a second argument is provided.
///
/// Package specific:
/// - access nested properties using dot path instead 'object' property,
///   e.g: 'user.name' as equivalent for ['has, 'name', ['get', 'user']]
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#has
/// {@endtemplate}
class HasExp extends MaplibreExp {
  /// {@macro has_exp}
  const HasExp(this.path);

  final String path;

  @override
  List<dynamic> compose() {
    return path
        .split('.')
        .map((e) => ['has', e]) // todo: verify if thats correct
        .fold(
          [],
          (previousValue, element) => [
            ...element,
            if (previousValue.isNotEmpty) previousValue,
          ],
        );
  }
}
