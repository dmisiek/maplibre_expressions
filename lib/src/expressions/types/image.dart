import 'package:maplibre_expressions/maplibre_expressions.dart';

/// {@template image_exp}
/// Returns an image type for use in icon-image, *-pattern entries and as
/// a section in the format expression.
///
/// If set, the image argument will check that the requested image exists in
/// the style and will return either the resolved image name or null, depending
/// on whether or not the image is currently in the style. This validation
/// process is synchronous and requires the image to have been added to
/// the style before requesting it in the image argument.
///
/// Documentation ref:
/// * https://maplibre.org/maplibre-style-spec/expressions/#image
///
/// Supported since:
/// * MapLibre GL JS: `1.6.0`
/// * MapLibre Native Android: `9.1.0`
/// * MapLibre Native iOS: `5.8.0`
/// {@endtemplate}
class ImageExp extends MaplibreExp {
  /// {@macro image_exp}
  const ImageExp(this.imageName);

  /// Name of the image to resolve.
  final MaplibreExp imageName;

  @override
  List<dynamic> compose() {
    return ['image', imageName.compose()];
  }
}
