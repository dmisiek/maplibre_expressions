import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Retrieves a property value from the current feature's properties, or from
/// another object if a second argument is provided.
///
/// Returns `null` if the requested property is missing.
///
/// Package specific:
/// - access nested properties using dots instead 'object' property,
///   e.g: 'user.name' as equivalent for ['get, 'name', ['get', 'user']]
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#get
class GetExp extends MaplibreExp {
  const GetExp(this.key);

  final String key;

  @override
  List<dynamic> compose() {
    return key
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
