import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Expression for wrapping exact value. Allows use any primitive value within
/// other expressions, keeping type-safe.
///
/// [value] can be string, number, color, array etc.
///
/// **Package specific expression**
class ConstExp<T> extends MaplibreExp {
  const ConstExp(this.value);

  final T value;

  @override
  dynamic compose() {
    return value;
  }
}
