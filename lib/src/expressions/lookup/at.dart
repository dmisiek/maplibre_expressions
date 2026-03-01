import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Retrieves an item from an array.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#at
class AtExp extends MaplibreExp {
  const AtExp(this.index, this.array);

  /// Zero-based array index.
  final MaplibreExp index;

  /// Array expression to read from.
  final MaplibreExp array;

  @override
  List<dynamic> compose() {
    return ['at', index.compose(), array.compose()];
  }
}
