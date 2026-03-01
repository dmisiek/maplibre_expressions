import 'package:maplibre_expressions/maplibre_expressions.dart';

class NotExp extends MaplibreExp {
  const NotExp(this.input);

  final MaplibreExp input;

  @override
  dynamic compose() {
    return ['!', input];
  }
}
