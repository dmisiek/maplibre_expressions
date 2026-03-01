import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template at_exp}
/// Retrieves an item from an array.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#at
/// {@endtemplate}
class AtExp extends MaplibreExp {
  /// {@macro at_exp}
  const AtExp({required this.index, required this.array});

  /// Zero-based array index.
  final MaplibreExp index;

  /// Array expression to read from.
  final MaplibreExp array;

  @override
  List<dynamic> compose() {
    return ['at', index.compose(), array.compose()];
  }
}
