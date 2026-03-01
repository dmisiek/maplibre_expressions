import 'package:maplibre_expressions/maplibre_expressions.dart';

class AllExp extends MaplibreExp {
  const AllExp(this.expressions);

  final List<MaplibreExp> expressions;

  @override
  dynamic compose() {
    return [
      'all',
      ...expressions.compose(),
    ];
  }
}
