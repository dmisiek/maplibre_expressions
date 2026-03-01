import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template global_state_exp}
/// Retrieves a property value from global state that can be set with
/// platform-specific APIs.
///
/// Defaults can be provided using the state root property. Returns null if
/// no value nor default value is set for the retrieved property.
///
/// Supported since:
/// * MapLibre GL JS: `5.6.0`
/// * MapLibre Native Android: not yet supported
/// * MapLibre Native iOS: not yet supported
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#global-state
/// {@endtemplate}
class GlobalStateExp extends MaplibreExp {
  /// {@macro global_state_exp}
  const GlobalStateExp(this.propertyName);

  /// Name of the global state property to return.
  final String propertyName;

  @override
  List<dynamic> compose() {
    return ['global-state', propertyName];
  }
}
