import 'package:maplibre_expressions/maplibre_expressions.dart';

class SliceExp extends MaplibreExp {
  const SliceExp(this.array, this.startIndex, [this.endIndex]);

  final MaplibreExp array;
  final MaplibreExp startIndex;
  final MaplibreExp? endIndex;

  @override
  dynamic compose() {
    return [
      'slice',
      array.compose(),
      startIndex.compose(),
      ?endIndex?.compose(),
    ];
  }
}

class SliceStringExp extends MaplibreExp {
  const SliceStringExp(this.string, this.startIndex, [this.endIndex]);

  final MaplibreExp string;
  final MaplibreExp startIndex;
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
