import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Returns a subarray from an array from a specified start index, or between
/// a start index and an end index if set.
///
/// The return value is inclusive of the start index but not of the end index.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#slice
class SliceExp extends MaplibreExp {
  const SliceExp(this.array, this.startIndex, [this.endIndex]);

  /// Array to slice.
  final MaplibreExp array;

  /// Inclusive start index.
  final MaplibreExp startIndex;

  /// Exclusive end index. If omitted, slice continues to the end.
  final MaplibreExp? endIndex;

  @override
  List<dynamic> compose() {
    return [
      'slice',
      array.compose(),
      startIndex.compose(),
      ?endIndex?.compose(),
    ];
  }
}

/// Returns a substring from a string from a specified start index, or between
/// a start index and an end index if set.
///
/// The return value is inclusive of the start index but not of the end index.
/// In a string, a UTF-16 surrogate pair counts as a single position.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#slice
class SliceStringExp extends MaplibreExp {
  const SliceStringExp(this.string, this.startIndex, [this.endIndex]);

  /// String to slice.
  final MaplibreExp string;

  /// Inclusive start index.
  final MaplibreExp startIndex;

  /// Exclusive end index. If omitted, slice continues to the end.
  final MaplibreExp? endIndex;

  @override
  dynamic compose() {
    return [
      'slice',
      string.compose(),
      startIndex.compose(),
      ?endIndex?.compose(),
    ];
  }
}
