import 'package:maplibre_expressions/maplibre_expressions.dart';

class GetExp extends MaplibreExp {
  const GetExp(this.key);

  final String key;

  @override
  List<dynamic> compose() {
    return key
        .split('.')
        .map((e) => ['get', e])
        .fold(
          [],
          (previousValue, element) => [
            ...element,
            if (previousValue.isNotEmpty) previousValue,
          ],
        );
  }
}
