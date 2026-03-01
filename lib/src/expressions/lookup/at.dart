import 'package:maplibre_expressions/maplibre_expressions.dart';

class AtExp extends MaplibreExp {
  const AtExp(this.index, this.array);

  final MaplibreExp index;
  final MaplibreExp array;

  @override
  dynamic compose() {
    return ['at', index.compose(), array.compose()];
  }
}
