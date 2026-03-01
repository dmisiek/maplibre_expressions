import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template index_of_array_exp}
/// Returns the first position at which an item can be found in an array
/// or returns `-1` if the input cannot be found.
///
/// Accepts an optional index from where to begin the search. In a string,
/// a UTF-16 surrogate pair counts as a single position.
///
/// Supported since:
/// * MapLibre GL JS: `1.10.0`
/// * MapLibre Native Android: `10.3.0`
/// * MapLibre Native iOS: `6.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#index-of
/// {@endtemplate}
class IndexOfExp extends MaplibreExp {
  /// {@macro index_of_array_exp}
  const IndexOfExp(this.item, this.array, [this.fromIndex]);

  /// Value to search for.
  final MaplibreExp item;

  /// Array expression to search in.
  final MaplibreExp array;

  /// Optional zero-based starting index.
  final MaplibreExp? fromIndex;

  @override
  List<dynamic> compose() {
    return [
      'index-of',
      item.compose(),
      array.compose(),
      ?fromIndex?.compose(),
    ];
  }
}

/// {@template index_of_string_exp}
/// Returns the first position at which a substring can be found in a string
/// or returns `-1` if the input cannot be found.
///
/// Accepts an optional index from where to begin the search. In a string,
/// a UTF-16 surrogate pair counts as a single position.
///
/// Supported since:
/// * MapLibre GL JS: `1.10.0`
/// * MapLibre Native Android: `10.3.0`
/// * MapLibre Native iOS: `6.0.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#index-of
/// {@endtemplate}
class IndexOfStringExp extends MaplibreExp {
  /// {@macro index_of_string_exp}
  const IndexOfStringExp(this.substring, this.string, [this.fromIndex]);

  /// Substring to search for.
  final MaplibreExp substring;

  /// String expression to search in.
  final MaplibreExp string;

  /// Optional zero-based starting index.
  final MaplibreExp? fromIndex;

  @override
  List<dynamic> compose() {
    return [
      'index-of',
      substring.compose(),
      string.compose(),
      ?fromIndex?.compose(),
    ];
  }
}
