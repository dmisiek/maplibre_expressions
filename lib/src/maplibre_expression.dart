import 'package:maplibre_expressions/src/expressions/const.dart';
import 'package:maplibre_expressions/src/expressions/decision/all.dart';
import 'package:maplibre_expressions/src/expressions/decision/any.dart';
import 'package:maplibre_expressions/src/expressions/decision/case.dart';
import 'package:maplibre_expressions/src/expressions/decision/coalesce.dart';
import 'package:maplibre_expressions/src/expressions/decision/comparisons.dart';
import 'package:maplibre_expressions/src/expressions/decision/match.dart';
import 'package:maplibre_expressions/src/expressions/decision/not.dart';
import 'package:maplibre_expressions/src/expressions/decision/within.dart';
import 'package:maplibre_expressions/src/expressions/lookup/at.dart';
import 'package:maplibre_expressions/src/expressions/lookup/get.dart';
import 'package:maplibre_expressions/src/expressions/lookup/global_state.dart';
import 'package:maplibre_expressions/src/expressions/lookup/has.dart';
import 'package:maplibre_expressions/src/expressions/lookup/in.dart';
import 'package:maplibre_expressions/src/expressions/lookup/index_of.dart';
import 'package:maplibre_expressions/src/expressions/lookup/length.dart';
import 'package:maplibre_expressions/src/expressions/lookup/slice.dart';
import 'package:maplibre_expressions/src/expressions/types/image.dart';
import 'package:maplibre_expressions/src/expressions/types/to_boolean.dart';
import 'package:maplibre_expressions/src/expressions/types/to_color.dart';
import 'package:maplibre_expressions/src/expressions/types/to_number.dart';
import 'package:maplibre_expressions/src/expressions/types/to_string.dart';
import 'package:maplibre_expressions/src/expressions/zoom/zoom.dart';

/// {@template maplibre_expressions}
/// Base type for building MapLibre style expressions.
///
/// Use factory constructors on [MaplibreExp] to compose expression trees and
/// call [compose] to convert them into the primitive representation expected by
/// MapLibre style JSON.
/// {@endtemplate}
abstract class MaplibreExp {
  /// {@macro maplibre_expressions}
  const MaplibreExp();

  /*
  * Types expressions.
  *
  * https://maplibre.org/maplibre-style-spec/expressions/#types
  */
  /// {@macro image_exp}
  const factory MaplibreExp.image(MaplibreExp imageName) = ImageExp;

  /// {@macro to_string_exp}
  const factory MaplibreExp.toString(MaplibreExp value) = ToStringExp;

  /// {@macro to_number_exp}
  const factory MaplibreExp.toNumber(List<MaplibreExp> values) = ToNumberExp;

  /// {@macro to_boolean_exp}
  const factory MaplibreExp.toBool(MaplibreExp value) = ToBooleanExp;

  /// {@macro to_color_exp}
  const factory MaplibreExp.toColor(List<MaplibreExp> values) = ToColorExp;

  /*
  * Lookup's expressions.
  *
  * https://maplibre.org/maplibre-style-spec/expressions/#lookup
  */
  /// {@macro at_exp}
  const factory MaplibreExp.at({
    required MaplibreExp index,
    required MaplibreExp array,
  }) = AtExp;

  /// {@macro in_array_exp}
  const factory MaplibreExp.inExp({
    required MaplibreExp item,
    required MaplibreExp array,
  }) = InExp;

  /// {@macro in_string_exp}
  const factory MaplibreExp.inString({
    required MaplibreExp substring,
    required MaplibreExp string,
  }) = InStringExp;

  /// {@macro index_of_array_exp}
  const factory MaplibreExp.indexOf(
    MaplibreExp item,
    MaplibreExp array, [
    MaplibreExp? fromIndex,
  ]) = IndexOfExp;

  /// {@macro index_of_string_exp}
  const factory MaplibreExp.indexOfString(
    MaplibreExp substring,
    MaplibreExp string, [
    MaplibreExp? fromIndex,
  ]) = IndexOfStringExp;

  /// {@macro slice_array_exp}
  const factory MaplibreExp.slice(
    MaplibreExp array,
    MaplibreExp startIndex, [
    MaplibreExp? endIndex,
  ]) = SliceExp;

  /// {@macro slice_string_exp}
  const factory MaplibreExp.sliceString(
    MaplibreExp string,
    MaplibreExp startIndex, [
    MaplibreExp? endIndex,
  ]) = SliceStringExp;

  /// {@macro global_state_exp}
  const factory MaplibreExp.globalState(String propertyName) = GlobalStateExp;

  /// {@macro get_exp}
  const factory MaplibreExp.get(String path) = GetExp;

  /// {@macro has_exp}
  const factory MaplibreExp.has(String path) = HasExp;

  /// {@macro length_exp}
  const factory MaplibreExp.length(MaplibreExp arrayOrString) = LengthExp;

  /*
  * Decision's expressions.
  *
  * https://maplibre.org/maplibre-style-spec/expressions/#decision
  */
  /// {@macro case_exp}
  const factory MaplibreExp.caseExp({
    required List<Case> cases,
    required MaplibreExp fallback,
  }) = CaseExp;

  /// {@macro match_exp}
  const factory MaplibreExp.match({
    required MaplibreExp input,
    required List<MatchCase> cases,
    required MaplibreExp fallback,
  }) = MatchExp;

  /// {@macro coalesce_exp}
  const factory MaplibreExp.coalesce(List<MaplibreExp> expressions) =
      CoalesceExp;

  /// {@macro equals_exp}
  const factory MaplibreExp.equals(MaplibreExp input1, MaplibreExp input2) =
      EqualsExp;

  /// {@macro not_equals_exp}
  const factory MaplibreExp.notEquals(MaplibreExp input1, MaplibreExp input2) =
      NotEqualsExp;

  /// {@macro greater_exp}
  const factory MaplibreExp.gt(MaplibreExp input1, MaplibreExp input2) =
      GreaterExp;

  /// {@macro less_exp}
  const factory MaplibreExp.ls(MaplibreExp input1, MaplibreExp input2) =
      LessExp;

  /// {@macro greater_or_equal_exp}
  const factory MaplibreExp.gte(MaplibreExp input1, MaplibreExp input2) =
      GreaterOrEqualExp;

  /// {@macro less_or_equal_exp}
  const factory MaplibreExp.lse(MaplibreExp input1, MaplibreExp input2) =
      LessOrEqualExp;

  /// {@macro all_exp}
  const factory MaplibreExp.all(List<MaplibreExp> inputs) = AllExp;

  /// {@macro any_exp}
  const factory MaplibreExp.any(List<MaplibreExp> inputs) = AnyExp;

  /// {@macro not_exp}
  const factory MaplibreExp.not(MaplibreExp input) = NotExp;

  /// {@macro within_exp}
  const factory MaplibreExp.within(Map<String, dynamic> geojson) = WithinExp;

  /*
  * Zoom's expressions.
  *
  * https://maplibre.org/maplibre-style-spec/expressions/#zoom
  */
  /// {@macro zoom_exp}
  const factory MaplibreExp.zoom() = ZoomExp;

  /*
  * Package specific expressions.
  */
  /// {@macro const_exp}
  const factory MaplibreExp.val(dynamic value) = ConstExp;

  /// Converts this expression tree into the primitive JSON-like structure used
  /// by MapLibre Style Specification.
  ///
  /// Returns a scalar (`String`, `num`, `bool`, `null`) or a `List<dynamic>`
  /// where the first element is an operator name and the next elements are
  /// composed arguments.
  dynamic compose();
}

extension MaplibreExpExtension on List<MaplibreExp> {
  List<dynamic> compose() => map((e) => e.compose()).toList();
}
