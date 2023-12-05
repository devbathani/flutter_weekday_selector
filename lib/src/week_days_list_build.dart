import 'package:flutter_weekday_selector/flutter_weekday_selector.dart' as fws;

class WeekDaysListBuild {
  final String dayStart;
  late final List<fws.WeekDaysList> weekDaysList;

  WeekDaysListBuild({required this.dayStart}) {
    int index = _weekDaysList.indexWhere((element) => element.name == dayStart);
    List<fws.WeekDaysList> weekDaysListTemp = [];
    final int wLength = _weekDaysList.length;
    for (int i = 0; i < wLength; i++) {
      var indexx = (i + index) % wLength;
      weekDaysListTemp.add(_weekDaysList[indexx]);
    }
    weekDaysList = weekDaysListTemp;
  }

  final List<fws.WeekDaysList> _weekDaysList = [
    fws.WeekDaysList(week: "M", name: "monday", isSelected: false),
    fws.WeekDaysList(week: "T", name: "tuesday", isSelected: false),
    fws.WeekDaysList(week: "W", name: "wednesday", isSelected: false),
    fws.WeekDaysList(week: "T", name: "thursday", isSelected: false),
    fws.WeekDaysList(week: "F", name: "friday", isSelected: false),
    fws.WeekDaysList(week: "S", name: "saturday", isSelected: false),
    fws.WeekDaysList(week: "S", name: "sunday", isSelected: false),
  ];
}
