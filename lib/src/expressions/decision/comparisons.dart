import 'package:maplibre_expressions/maplibre_expressions.dart';

class ComparisonExp extends MaplibreExp {
  const ComparisonExp(
    this.input1,
    this.input2, {
    required this.sign,
  });

  final MaplibreExp input1;
  final MaplibreExp input2;
  final String sign;

  @override
  dynamic compose() {
    return [
      sign,
      input1.compose(),
      input2.compose(),
    ];
  }
}

class EqualsExp extends ComparisonExp {
  const EqualsExp(super.input1, super.input2) : super(sign: '==');
}

class NotEqualsExp extends ComparisonExp {
  const NotEqualsExp(super.input1, super.input2) : super(sign: '!=');
}

class GreaterExp extends ComparisonExp {
  const GreaterExp(super.input1, super.input2) : super(sign: '>');
}

class GreaterOrEqualExp extends ComparisonExp {
  const GreaterOrEqualExp(super.input1, super.input2) : super(sign: '>=');
}

class LessExp extends ComparisonExp {
  const LessExp(super.input1, super.input2) : super(sign: '<');
}

class LessOrEqualExp extends ComparisonExp {
  const LessOrEqualExp(super.input1, super.input2) : super(sign: '<=');
}
