# Maplibre Expressions

**Compose [MapLibre expressions](https://maplibre.org/maplibre-style-spec/expressions/) in Dart with
total type safety and structured, class-based composition.** This package replaces fragile dynamic
maps with a robust API that catches styling bugs at compile-time, while naturally resulting in
cleaner, better-formatted code. Build complex map layers with confidence and full IDE support.

**Bonus:** Thanks to Dart's trailing commas, your complex expressions will now format into a
readable tree structure automatically.

[![License: MIT][license_badge]][license_link]
![coverage_badge]

## Installation 💻

**❗ In order to start using Maplibre Expressions you must have the [Dart SDK][dart_install_link]
installed on your machine.**

Install via `dart pub add`:

```sh
dart pub add maplibre_expressions
```

## Usage

```dart
// build expression
final expression = const MaplibreExp.caseExp([
      .new(
        .equals(.get('user.firstname'), .val('joe')),
        .val('doe'),
  ),
      .new(
        .equals(.get('user.lastname'), .val('doe')),
        .val('joe'),
  ),
],
  fallback: .val('unknown'),
);

// compose primitive expression 
// and provide it to layer properties
final layerProperties = SymbolLayerProperties(
  textField: expression.compose(),
);
```

> Note: Package was designed to work
> with [flutter-maplibre-gl](https://github.com/maplibre/flutter-maplibre-gl/tree/main).
> SymbolLayerProperties class is provided by map package.

## Implementation state

Current implementation state based
on [documentation](https://maplibre.org/maplibre-style-spec/expressions/):

| Category             | Operator                                                                                                                                    | Status |
|:---------------------|:--------------------------------------------------------------------------------------------------------------------------------------------|:------:|
| **Variable binding** | let, var                                                                                                                                    |   ⏳    |
| **Types**            | literal, array, typeof, string, number, boolean, object, collator, format, image, number-format, to-string, to-number, to-boolean, to-color |   🚧   |
| **Lookup**           | at, in, index-of, slice, global-state, get, has, length                                                                                     |   ✅    |
| **Decision**         | case**, match, coalesce, ==, !=, >, <, >=, <=, all, any, !, within                                                                          |   ✅    |
| **Ramps, scales**    | step, interpolate, interpolate-hcl, interpolate-lab                                                                                         |   ⏳    |
| **Math**             | +, *, -, /, %, ^, sqrt, log10, ln, log2, sin, cos, tan, asin, acos, atan, min, max, round, abs, ceil, floor, distance, ln2, pi, e           |   ⏳    |
| **Color**            | rgb, rgba, to-rgba                                                                                                                          |   ⏳    |
| **Feature data**     | properties, feature-state, geometry-type, id, line-progress, accumulated                                                                    |   ⏳    |
| **Zoom**             | zoom                                                                                                                                        |   ✅    |
| **Heatmap**          | heatmap-density                                                                                                                             |   ⏳    |
| **Terrain**          | elevation                                                                                                                                   |   ⏳    |
| **String**           | is-supported-script, upcase, downcase, concat, resolved-locale                                                                              |   ⏳    |

<br>✅ – Fully implemented
<br>🚧 - Partially implemented
<br>⏳ – Not implemented (but planned)

[coverage_badge]: coverage_badge.svg

[dart_install_link]: https://dart.dev/get-dart

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg

[license_link]: https://opensource.org/licenses/MIT
