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

/// Returns `true` if the input values are equal, `false` otherwise.
///
/// The comparison is strictly typed: values of different runtime types are
/// always considered unequal. Cases where the types are known to be different
/// at parse time are considered invalid and will produce a parse error.
/// Accepts an optional collator argument to control locale-dependent string
/// comparisons.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_1
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
class EqualsExp extends ComparisonExp {
  const EqualsExp(super.input1, super.input2) : super(sign: '==');
}

/// Returns `true` if the input values are not equal, `false` otherwise.
///
/// The comparison is strictly typed: values of different runtime types are
/// always considered unequal. Cases where the types are known to be different
/// at parse time are considered invalid and will produce a parse error.
/// Accepts an optional collator argument to control locale-dependent string
/// comparisons.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_2
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
class NotEqualsExp extends ComparisonExp {
  const NotEqualsExp(super.input1, super.input2) : super(sign: '!=');
}

/// Returns `true` if the first input is strictly greater than the second,
/// `false` otherwise.
///
/// The arguments are required to be either both strings or both numbers;
/// if during evaluation they are not, expression evaluation produces an error.
/// Cases where this constraint is known not to hold at parse time are
/// considered in valid and will produce a parse error. Accepts an optional
/// collator argument to control locale-dependent string comparisons.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_3
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
class GreaterExp extends ComparisonExp {
  const GreaterExp(super.input1, super.input2) : super(sign: '>');
}

/// Returns `true` if the first input is greater than or equal to the second,
/// `false` otherwise.
///
/// The arguments are required to be either both strings or both numbers;
/// if during evaluation they are not, expression evaluation produces an error.
/// Cases where this constraint is known not to hold at parse time are
/// considered in valid and will produce a parse error. Accepts an optional
/// collator argument to control locale-dependent string comparisons.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_5
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
class GreaterOrEqualExp extends ComparisonExp {
  const GreaterOrEqualExp(super.input1, super.input2) : super(sign: '>=');
}

/// Returns `true` if the first input is strictly less than the second, `false`
/// otherwise.
///
/// The arguments are required to be either both strings or both numbers;
/// if during evaluation they are not, expression evaluation produces an error.
/// Cases where this constraint is known not to hold at parse time are
/// considered in valid and will produce a parse error. Accepts an optional
/// collator argument to control locale-dependent string comparisons.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_4
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
class LessExp extends ComparisonExp {
  const LessExp(super.input1, super.input2) : super(sign: '<');
}

/// Returns `true` if the first input is less than or equal to the second,
/// `false` otherwise.
///
/// The arguments are required to be either both strings or both numbers;
/// if during evaluation they are not, expression evaluation produces an error.
/// Cases where this constraint is known not to hold at parse time are
/// considered in valid and will produce a parse error. Accepts an optional
/// collator argument to control locale-dependent string comparisons.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#_6
///
/// Supported since:
/// * MapLibre GL JS: `0.41.0`
/// * MapLibre Native Android: `6.0.0`
/// * MapLibre Native iOS: `4.0.0`
/// * Optional collator: GL JS `0.45.0`, Android `6.5.0`, iOS `4.2.0`
class LessOrEqualExp extends ComparisonExp {
  const LessOrEqualExp(super.input1, super.input2) : super(sign: '<=');
}
