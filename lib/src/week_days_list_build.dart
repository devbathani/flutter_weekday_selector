import 'package:flutter_weekday_selector/flutter_weekday_selector.dart' as fws;

class WeekDaysListBuild {
  final String dayStart;
  late final List<fws.WeekDay> weekDaysList;

  WeekDaysListBuild({required this.dayStart}) {
    int index = _weekDaysList.indexWhere((element) => element.name == dayStart);
    List<fws.WeekDay> weekDaysListTemp = [];
    final int wLength = _weekDaysList.length;
    for (int i = 0; i < wLength; i++) {
      var indexx = (i + index) % wLength;
      weekDaysListTemp.add(_weekDaysList[indexx]);
    }
    weekDaysList = weekDaysListTemp;
  }

  final List<fws.WeekDay> _weekDaysList = [
    fws.WeekDay(week: "M", name: "monday", isSelected: false),
    fws.WeekDay(week: "T", name: "tuesday", isSelected: false),
    fws.WeekDay(week: "W", name: "wednesday", isSelected: false),
    fws.WeekDay(week: "T", name: "thursday", isSelected: false),
    fws.WeekDay(week: "F", name: "friday", isSelected: false),
    fws.WeekDay(week: "S", name: "saturday", isSelected: false),
    fws.WeekDay(week: "S", name: "sunday", isSelected: false),
  ];
}
