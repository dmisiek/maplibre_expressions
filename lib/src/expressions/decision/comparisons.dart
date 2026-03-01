import 'package:maplibre_expressions/maplibre_expressions.dart';

class ComparisonExp extends MaplibreExp {
  const ComparisonExp(
    this.input1,
    this.input2, {
    required this.sign,
  });

  /// Left operand.
  final MaplibreExp input1;

  /// Right operand.
  final MaplibreExp input2;

  /// Comparison operator symbol (for example `==`, `>`, `<=`).
  final String sign;

  @override
  List<dynamic> compose() {
    return [
      sign,
      input1.compose(),
      input2.compose(),
    ];
  }
}

/// {@template equals_exp}
/// Returns `true` if the input values are equal, `false` otherwise.
///
/// The comparison is strictly typed: values of different runtime types are
/// always considered unequal. Cases where the types are known to be different
/// at parse time are considered invalid and will produce a parse error.
/// Accepts an optional collator argument to control locale-dependent string
/// comparisons.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_1
/// {@endtemplate}
class EqualsExp extends ComparisonExp {
  /// {@macro equals_exp}
  const EqualsExp(super.input1, super.input2) : super(sign: '==');
}

/// {@template not_equals_exp}
/// Returns `true` if the input values are not equal, `false` otherwise.
///
/// The comparison is strictly typed: values of different runtime types are
/// always considered unequal. Cases where the types are known to be different
/// at parse time are considered invalid and will produce a parse error.
/// Accepts an optional collator argument to control locale-dependent string
/// comparisons.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_2
/// {@endtemplate}
class NotEqualsExp extends ComparisonExp {
  /// {@macro not_equals_exp}
  const NotEqualsExp(super.input1, super.input2) : super(sign: '!=');
}

/// {@template greater_exp}
/// Returns `true` if the first input is strictly greater than the second,
/// `false` otherwise.
///
/// The arguments are required to be either both strings or both numbers;
/// if during evaluation they are not, expression evaluation produces an error.
/// Cases where this constraint is known not to hold at parse time are
/// considered in valid and will produce a parse error. Accepts an optional
/// collator argument to control locale-dependent string comparisons.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_3
/// {@endtemplate}
class GreaterExp extends ComparisonExp {
  /// {@macro greater_exp}
  const GreaterExp(super.input1, super.input2) : super(sign: '>');
}

/// {@template greater_or_equal_exp}
/// Returns `true` if the first input is greater than or equal to the second,
/// `false` otherwise.
///
/// The arguments are required to be either both strings or both numbers;
/// if during evaluation they are not, expression evaluation produces an error.
/// Cases where this constraint is known not to hold at parse time are
/// considered in valid and will produce a parse error. Accepts an optional
/// collator argument to control locale-dependent string comparisons.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_5
/// {@endtemplate}
class GreaterOrEqualExp extends ComparisonExp {
  /// {@macro greater_or_equal_exp}
  const GreaterOrEqualExp(super.input1, super.input2) : super(sign: '>=');
}

/// {@template less_exp}
/// Returns `true` if the first input is strictly less than the second, `false`
/// otherwise.
///
/// The arguments are required to be either both strings or both numbers;
/// if during evaluation they are not, expression evaluation produces an error.
/// Cases where this constraint is known not to hold at parse time are
/// considered in valid and will produce a parse error. Accepts an optional
/// collator argument to control locale-dependent string comparisons.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_4
/// {@endtemplate}
class LessExp extends ComparisonExp {
  /// {@macro less_exp}
  const LessExp(super.input1, super.input2) : super(sign: '<');
}

/// {@template less_or_equal_exp}
/// Returns `true` if the first input is less than or equal to the second,
/// `false` otherwise.
///
/// The arguments are required to be either both strings or both numbers;
/// if during evaluation they are not, expression evaluation produces an error.
/// Cases where this constraint is known not to hold at parse time are
/// considered in valid and will produce a parse error. Accepts an optional
/// collator argument to control locale-dependent string comparisons.
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_6
/// {@endtemplate}
class LessOrEqualExp extends ComparisonExp {
  /// {@macro less_or_equal_exp}
  const LessOrEqualExp(super.input1, super.input2) : super(sign: '<=');
}
