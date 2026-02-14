import 'package:maplibre_expressions/maplibre_expressions.dart';

class EqualsExp extends MaplibreExp {
  const EqualsExp(this.input1, this.input2);

  final MaplibreExp input1;
  final MaplibreExp input2;

  @override
  dynamic compose() {
    return [
      '==',
      input1.compose(),
      input2.compose(),
    ];
  }
}
