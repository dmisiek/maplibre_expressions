import 'package:maplibre_expressions/maplibre_expressions.dart';

class CoalesceExp extends MaplibreExp {
  const CoalesceExp(this.expressions);

  final List<MaplibreExp> expressions;

  @override
  dynamic compose() {
    return [
      'coalesce',
      ...expressions.map((e) => e.compose()),
    ];
  }
}
