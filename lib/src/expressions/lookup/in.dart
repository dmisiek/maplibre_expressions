import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template in_array_exp}
/// Determines whether an item exists in an array.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#in
/// {@endtemplate}
class InExp extends MaplibreExp {
  /// {@macro in_array_exp}
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

/// {@template in_string_exp}
/// Determines whether a substring exists in a string.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#in
/// {@endtemplate}
class InStringExp extends MaplibreExp {
  /// {@macro in_string_exp}
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
