import 'package:maplibre_expressions/maplibre_expressions.dart';

class InExp extends MaplibreExp {
  const InExp(this.item, this.array);

  final MaplibreExp item;
  final MaplibreExp array;

  @override
  dynamic compose() {
    return ['in', item.compose(), array.compose()];
  }
}

class InStringExp extends MaplibreExp {
  const InStringExp(this.substring, this.string);

  final MaplibreExp substring;
  final MaplibreExp string;

  @override
  dynamic compose() {
    return ['in', substring.compose(), string.compose()];
  }
}
