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

/// {@template maplibre_expressions}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
abstract class MaplibreExp {
  /// {@macro maplibre_expressions}
  const MaplibreExp();

  /*
  * Lookup's expressions.
  *
  * https://maplibre.org/maplibre-style-spec/expressions/#lookup
  */
  const factory MaplibreExp.at(MaplibreExp index, MaplibreExp array) = AtExp;

  const factory MaplibreExp.inExp(MaplibreExp item, MaplibreExp array) = InExp;

  const factory MaplibreExp.inString(
    MaplibreExp substring,
    MaplibreExp string,
  ) = InStringExp;

  const factory MaplibreExp.indexOf(
    MaplibreExp item,
    MaplibreExp array, [
    MaplibreExp? fromIndex,
  ]) = IndexOfExp;

  const factory MaplibreExp.indexOfString(
    MaplibreExp substring,
    MaplibreExp string, [
    MaplibreExp? fromIndex,
  ]) = IndexOfStringExp;

  const factory MaplibreExp.slice(
    MaplibreExp array,
    MaplibreExp startIndex, [
    MaplibreExp? endIndex,
  ]) = SliceExp;

  const factory MaplibreExp.sliceString(
    MaplibreExp string,
    MaplibreExp startIndex, [
    MaplibreExp? endIndex,
  ]) = SliceStringExp;

  const factory MaplibreExp.globalState(String propertyName) = GlobalStateExp;

  const factory MaplibreExp.get(String key) = GetExp;

  const factory MaplibreExp.has(String key) = HasExp;

  const factory MaplibreExp.length(MaplibreExp arrayOrString) = LengthExp;

  /*
  * Decision's expressions.
  *
  * https://maplibre.org/maplibre-style-spec/expressions/#decision
  */
  const factory MaplibreExp.caseExp(
    List<Case> cases, {
    required MaplibreExp fallback,
  }) = CaseExp;

  const factory MaplibreExp.match(
    MaplibreExp input,
    List<MatchCase> cases, {
    required MaplibreExp fallback,
  }) = MatchExp;

  const factory MaplibreExp.coalesce(List<MaplibreExp> expressions) =
      CoalesceExp;

  const factory MaplibreExp.equals(MaplibreExp input1, MaplibreExp input2) =
      EqualsExp;

  const factory MaplibreExp.notEquals(MaplibreExp input1, MaplibreExp input2) =
      NotEqualsExp;

  const factory MaplibreExp.gt(MaplibreExp input1, MaplibreExp input2) =
      GreaterExp;

  const factory MaplibreExp.ls(MaplibreExp input1, MaplibreExp input2) =
      LessExp;

  const factory MaplibreExp.gte(MaplibreExp input1, MaplibreExp input2) =
      GreaterOrEqualExp;

  const factory MaplibreExp.lse(MaplibreExp input1, MaplibreExp input2) =
      LessOrEqualExp;

  const factory MaplibreExp.all(List<MaplibreExp> inputs) = AllExp;

  const factory MaplibreExp.any(List<MaplibreExp> inputs) = AnyExp;

  const factory MaplibreExp.not(MaplibreExp input) = NotExp;

  const factory MaplibreExp.within(Map<String, dynamic> geojson) = WithinExp;

  /*
  * Package specific expressions.
  */
  const factory MaplibreExp.val(dynamic value) = ConstExp;

  /// Composes primitive expression.
  /// Its output can be provided to layer directly.
  dynamic compose();
}
