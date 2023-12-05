import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weekday_selector/flutter_weekday_selector.dart';
import 'package:flutter_weekday_selector/src/week_days_list_build.dart';

void main() {
  // Allows customizing the height and width of the selector
  testWidgets("Test Allows Customizing Height and Width of Selector",
      (widgetTester) async {
    final selector = MaterialApp(
        home: Center(
      child: WeekDaySelector(
        onSubmitted: (day) {},
        height: 50,
        width: 300,
      ),
    ));

    await widgetTester.pumpWidget(selector);
    final Size wSize = widgetTester.getSize(find.byType(WeekDaySelector));

    expect(wSize.height, 50);
    expect(wSize.width, 300);
  });

  //test week order
  test("Test Week Order", () {
    //test monday
    final wMonday = WeekDaysListBuild(
      dayStart: "monday",
    );

    expect(wMonday.weekDaysList.length, 7);
    expect(wMonday.weekDaysList[0].name, "monday");

    //test satuday
    final wSaturday = WeekDaysListBuild(
      dayStart: "saturday",
    );

    expect(wSaturday.weekDaysList.length, 7);
    expect(wSaturday.weekDaysList[0].name, "saturday");

    //test sunday
    final wSunday = WeekDaysListBuild(
      dayStart: "sunday",
    );

    expect(wSunday.weekDaysList.length, 7);
    expect(wSunday.weekDaysList[0].name, "sunday");
  });

  // Allows Customizing Shape of selector container
  // testWidgets("Test Allows Customizing Shape of selector container",
  //     (widgetTester) async {
  //   final selector = WeekDaySelector(
  //     onSubmitted: (day) {},
  //     shape: BoxShape.rectangle,
  //   );

  //   await widgetTester.pumpWidget(selector);

  //   expect(widgetTester, findsOneWidget);
  // });

  // // Renders the week day selector widget with null values for height, width, shape, border, style, daySelectedColor, and dayUnselectedColor
  // testWidgets("test renders week day selector with null values",
  //     (widgetTester) async {
  //   final selector = WeekDaySelector(
  //     onSubmitted: (day) {},
  //     width: null,
  //     shape: null,
  //     border: null,
  //     style: null,
  //     daySelectedColor: null,
  //     dayUnselectedColor: null,
  //   );

  //   await widgetTester.pumpWidget(selector);

  //   expect(widgetTester, findsOneWidget);
  // });
}
