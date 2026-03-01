import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Tests for the presence of a property value in the current feature's
/// properties, or from another object if a second argument is provided.
///
/// Package specific:
/// - access nested properties using dots instead 'object' property,
///   e.g: 'user.name' as equivalent for ['has, 'name', ['get', 'user']]
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#has
class HasExp extends MaplibreExp {
  const HasExp(this.key);

  final String key;

  @override
  List<dynamic> compose() {
    return key
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
