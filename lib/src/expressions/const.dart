import 'package:maplibre_expressions/maplibre_expressions.dart';

class ConstExp<T> extends MaplibreExp {
  const ConstExp(this.value);

  final T value;

  @override
  dynamic compose() {
    return value;
  }
}
