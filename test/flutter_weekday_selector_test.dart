import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weekday_selector/flutter_weekday_selector.dart';

void main() {
  // Allows customizing the height and width of the selector
  testWidgets("Test Allows Customizing Height and Width of Selector",
      (widgetTester) async {
    final selector = WeekDaySelector(
      onSubmitted: (day) {},
      height: 50,
      width: 100,
    );

    await widgetTester.pumpWidget(selector);

    expect(widgetTester, findsOneWidget);
  });

  // Allows Customizing Shape of selector container
  testWidgets("Test Allows Customizing Shape of selector container",
      (widgetTester) async {
    final selector = WeekDaySelector(
      onSubmitted: (day) {},
      shape: BoxShape.rectangle,
    );

    await widgetTester.pumpWidget(selector);

    expect(widgetTester, findsOneWidget);
  });

  // Renders the week day selector widget with null values for height, width, shape, border, style, daySelectedColor, and dayUnselectedColor
  testWidgets("test renders week day selector with null values",
      (widgetTester) async {
    final selector = WeekDaySelector(
      onSubmitted: (day) {},
      height: null,
      width: null,
      shape: null,
      border: null,
      style: null,
      daySelectedColor: null,
      dayUnselectedColor: null,
    );

    await widgetTester.pumpWidget(selector);

    expect(widgetTester, findsOneWidget);
  });
}
