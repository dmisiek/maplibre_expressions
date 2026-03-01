import 'package:maplibre_expressions/maplibre_expressions.dart';

class AnyExp extends MaplibreExp {
  const AnyExp(this.expressions);

  final List<MaplibreExp> expressions;

  @override
  dynamic compose() {
    return [
      'any',
      ...expressions.map((e) => e.compose()),
    ];
  }
}
