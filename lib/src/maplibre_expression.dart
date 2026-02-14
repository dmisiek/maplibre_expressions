import 'package:maplibre_expressions/src/expressions/case.dart';
import 'package:maplibre_expressions/src/expressions/const.dart';
import 'package:maplibre_expressions/src/expressions/equals.dart';
import 'package:maplibre_expressions/src/expressions/get.dart';

/// {@template maplibre_expressions}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
abstract class MaplibreExp {
  /// {@macro maplibre_expressions}
  const MaplibreExp();

  const factory MaplibreExp.caseExp(
    List<Condition> conditions, {
    required MaplibreExp fallback,
  }) = CaseExp;

  const factory MaplibreExp.equals(
    MaplibreExp input1,
    MaplibreExp input2,
  ) = EqualsExp;

  const factory MaplibreExp.get(String key) = GetExp;

  const factory MaplibreExp.val(dynamic value) = ConstExp;

  dynamic compose();
}
