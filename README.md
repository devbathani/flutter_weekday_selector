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

TODO: This package will provide flutter developer a quick way to make a week day selection functionality.

# flutter_weekday_selector

![Demo Video](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExODVyc3ppbjA1amtsc215MmFoOWV6ZmVpMnV3c2dxMzNjbXI2bjduMSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/4xN0wmjwRfaRrwgTcc/giphy.gif)

## Installation

In your `pubspec.yaml` file, add the following dependency:

```yaml
dependencies:
  flutter_weekday_selector: ^0.0.5
```

Call the WeekDaySelector widget where you can to integrate the widget

```dart
child : WeekDaySelector(
    onSubmitted: (day) {},
)
```
