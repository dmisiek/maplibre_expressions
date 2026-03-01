import 'package:maplibre_expressions/maplibre_expressions.dart';

class LengthExp extends MaplibreExp {
  const LengthExp(this.arrayOrString);

  final MaplibreExp arrayOrString;

  @override
  dynamic compose() {
    return ['length', arrayOrString];
  }
}
