import 'package:maplibre_expressions/maplibre_expressions.dart';

class HasExp extends MaplibreExp {
  const HasExp(this.key);

  final String key;

  @override
  List<dynamic> compose() {
    return key
        .split('.')
        .map((e) => ['has', e])
        .fold(
          [],
          (previousValue, element) => [
            ...element,
            if (previousValue.isNotEmpty) previousValue,
          ],
        );
  }
}
