<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# DataState

The `DataState` class is used to represent different states of data loading in a Flutter
application. It encapsulates the loading state and any associated exception.

## Usage

### Importing

To use the `DataState` class, import it in your Dart file:

```dart
import 'package:data_state/data_state.dart';
``` 

### Creating instances

You can create instances of the `DataState` class using the provided constructors:

```dart

final noneState = DataState.none();
final loadingState = DataState.loading();
final fullState = DataState.full();
final partialState = DataState.partial();
final errorState = DataState.error(Exception('An error occurred'));
```

### Methods

The DataState class provides several utility methods to check the current state:

- bool get `hasException`: Returns true if the state is LoadingState.error.
- bool get `isLoading`: Returns true if the state is LoadingState.loading.
- bool get `isFull`: Returns true if the state is LoadingState.full.
- bool get `isNone`: Returns true if the state is LoadingState.none.

#### Enum LoadingState

- `none`: Indicates that there is no data loading process currently happening.
- `partial`: Indicates that the data loading process is partially complete.
- `loading`: Indicates that the data is currently being loaded.
- `full`: Indicates that the data loading process is fully complete.
- `error`: Indicates that an error occurred during the data loading process.

- These states help in managing and representing the different stages of data loading in a Flutter
  application, allowing for better control and handling of the data loading lifecycle.

### Example

Here is an example of how to use the `DataState` class:

```dart
void main() {
  const state = DataState.loading();
  if (state.isLoading) {
    print('Data is currently loading');
  }
}
```

## Features

- Represent different loading states: `none`, `partial`, `loading`, `full`, `error`.
- Encapsulate exceptions related to data loading.
- Provide utility getters to check the current state.

## Getting started

To start using the `DataState` package, add it to your `pubspec.yaml`:

```yaml
dependencies:
  data_state: ^0.0.1
```

Then run `flutter pub get` to install the package.

## Additional information

For more information, visit
the [Dart packages guide](https://dart.dev/guides/libraries/create-library-packages) and
the [Flutter packages guide](https://flutter.dev/developing-packages).

To contribute to this package, please open an issue or submit a pull request on
the [GitHub repository](https://github.com/your-repo/data_state).

For any issues or questions, you can file an issue on the GitHub repository. The package authors
will respond as soon as possible.

```