import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Determines whether an item exists in an array.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#in
class InExp extends MaplibreExp {
  const InExp(this.item, this.array);

  /// Value searched in the array.
  final MaplibreExp item;

  /// Array expression to search in.
  final MaplibreExp array;

  @override
  dynamic compose() {
    return ['in', item.compose(), array.compose()];
  }
}

/// Determines whether a substring exists in a string.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#in
class InStringExp extends MaplibreExp {
  const InStringExp(this.substring, this.string);

  /// Substring to search for.
  final MaplibreExp substring;

  /// String expression to search in.
  final MaplibreExp string;

  @override
  dynamic compose() {
    return ['in', substring.compose(), string.compose()];
  }
}
