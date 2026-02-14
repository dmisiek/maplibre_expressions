# Maplibre Expressions

**Compose [MapLibre expressions](https://maplibre.org/maplibre-style-spec/expressions/) in Dart with total type safety and structured, class-based composition.** This package replaces fragile dynamic maps with a robust API that catches styling bugs at compile-time, while naturally resulting in cleaner, better-formatted code. Build complex map layers with confidence and full IDE support.

**Bonus:** Thanks to Dart's trailing commas, your complex expressions will now format into a readable tree structure automatically.

[![License: MIT][license_badge]][license_link]


## Installation 💻

**❗ In order to start using Maplibre Expressions you must have the [Dart SDK][dart_install_link] installed on your machine.**

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

> Note: Package was designed to work with [flutter-maplibre-gl](https://github.com/maplibre/flutter-maplibre-gl/tree/main). SymbolLayerProperties class is provided by map package.

## Implementation state

Current implementation state based on [documentation](https://maplibre.org/maplibre-style-spec/expressions/):

| Category | Operator | Status |
| :--- | :--- | :---: |
| **Variable binding** | let, var | ⏳ |
| **Types** | literal, array, typeof, string, number, boolean, object, collator, format, image, number-format, to-string, to-number, to-boolean, to-color | ⏳ |
| **Lookup** | at, in, index-of, slice, global-state, get, has, length | 🚧 |
| **Decision** | case, match, coalesce, ==, !=, >, <, >=, <=, all, any, !, within | 🚧 |
| **Ramps, scales** | step, interpolate, interpolate-hcl, interpolate-lab | ⏳ |
| **Math** | +, *, -, /, %, ^, sqrt, log10, ln, log2, sin, cos, tan, asin, acos, atan, min, max, round, abs, ceil, floor, distance, ln2, pi, e | ⏳ |
| **Color** | rgb, rgba, to-rgba | ⏳ |
| **Feature data** | properties, feature-state, geometry-type, id, line-progress, accumulated | ⏳ |
| **Zoom** | zoom | ⏳ |
| **Heatmap** | heatmap-density | ⏳ |
| **Terrain** | elevation | ⏳ |
| **String** | is-supported-script, upcase, downcase, concat, resolved-locale | ⏳ |

<br>✅ – Fully implemented
<br>🚧 - Partially implemented
<br>⏳ – Not implemented (but planned)

## Running Tests 🧪

To run all unit tests:

```sh
dart pub global activate coverage 1.15.0
dart test --coverage=coverage
dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage/lcov.info
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

[dart_install_link]: https://dart.dev/get-dart
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
