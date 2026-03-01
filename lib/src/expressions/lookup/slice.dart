import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template slice_array_exp}
/// Returns a subarray from an array from a specified start index, or between
/// a start index and an end index if set.
///
/// The return value is inclusive of the start index but not of the end index.
///
/// Supported since:
/// * MapLibre GL JS: `1.10.0`
/// * MapLibre Native Android: `10.3.0`
/// * MapLibre Native iOS: `6.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#slice
/// {@endtemplate}
class SliceExp extends MaplibreExp {
  /// {@macro slice_array_exp}
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

/// {@template slice_string_exp}
/// Returns a substring from a string from a specified start index, or between
/// a start index and an end index if set.
///
/// The return value is inclusive of the start index but not of the end index.
/// In a string, a UTF-16 surrogate pair counts as a single position.
///
/// Supported since:
/// * MapLibre GL JS: `1.10.0`
/// * MapLibre Native Android: `10.3.0`
/// * MapLibre Native iOS: `6.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#slice
/// {@endtemplate}
class SliceStringExp extends MaplibreExp {
  /// {@macro slice_string_exp}
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
