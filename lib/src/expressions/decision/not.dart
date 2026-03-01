import 'package:maplibre_expressions/maplibre_expressions.dart';

/// Logical negation. Returns `true` if the input is `false`, and `false` if
/// the input is `true`.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#%21
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
class NotExp extends MaplibreExp {
  const NotExp(this.input);

  final MaplibreExp input;

  @override
  List<dynamic> compose() {
    return ['!', input];
  }
}
