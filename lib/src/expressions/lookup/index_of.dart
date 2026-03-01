import 'package:maplibre_expressions/maplibre_expressions.dart';

class IndexOfExp extends MaplibreExp {
  const IndexOfExp(this.item, this.array, [this.fromIndex]);

  final MaplibreExp item;
  final MaplibreExp array;
  final MaplibreExp? fromIndex;

  @override
  dynamic compose() {
    return [
      'index-of',
      item.compose(),
      array.compose(),
      ?fromIndex?.compose(),
    ];
  }
}

class IndexOfStringExp extends MaplibreExp {
  const IndexOfStringExp(this.substring, this.string, [this.fromIndex]);

  final MaplibreExp substring;
  final MaplibreExp string;
  final MaplibreExp? fromIndex;

  @override
  dynamic compose() {
    return [
      'index-of',
      substring.compose(),
      string.compose(),
      ?fromIndex?.compose(),
    ];
  }
}
