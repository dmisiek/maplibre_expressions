import 'package:maplibre_expressions/src/expressions/const.dart';
import 'package:maplibre_expressions/src/expressions/decision/all.dart';
import 'package:maplibre_expressions/src/expressions/decision/any.dart';
import 'package:maplibre_expressions/src/expressions/decision/case.dart';
import 'package:maplibre_expressions/src/expressions/decision/coalesce.dart';
import 'package:maplibre_expressions/src/expressions/decision/comparisons.dart';
import 'package:maplibre_expressions/src/expressions/decision/match.dart';
import 'package:maplibre_expressions/src/expressions/decision/not.dart';
import 'package:maplibre_expressions/src/expressions/decision/within.dart';
import 'package:maplibre_expressions/src/expressions/lookup/get.dart';

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
  const factory MaplibreExp.get(String key) = GetExp;

  /*
  * Decision's expressions.
  *
  * https://maplibre.org/maplibre-style-spec/expressions/#decision
  */
  const factory MaplibreExp.caseExp(
    List<Case> cases, {
    required MaplibreExp fallback,
  }) = CaseExp;

  const factory MaplibreExp.matchExp(
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
