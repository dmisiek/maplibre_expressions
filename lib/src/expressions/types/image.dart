import 'package:maplibre_expressions/maplibre_expressions.dart';

class ImageExp extends MaplibreExp {
  const ImageExp(this.imageName);

  final MaplibreExp imageName;

  @override
  dynamic compose() {
    return ['image', imageName.compose()];
  }
}
