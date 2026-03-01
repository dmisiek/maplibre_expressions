import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Determines whether an item exists in an array.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#in
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
class InExp extends MaplibreExp {
  const InExp({
    required this.item,
    required this.array,
  });

  /// Value searched in the array.
  final MaplibreExp item;

  /// Array expression to search in.
  final MaplibreExp array;

  @override
  List<dynamic> compose() {
    return ['in', item.compose(), array.compose()];
  }
}

/// Determines whether a substring exists in a string.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#in
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
class InStringExp extends MaplibreExp {
  const InStringExp({
    required this.substring,
    required this.string,
  });

  /// Substring to search for.
  final MaplibreExp substring;

  /// String expression to search in.
  final MaplibreExp string;

  @override
  List<dynamic> compose() {
    return ['in', substring.compose(), string.compose()];
  }
}
