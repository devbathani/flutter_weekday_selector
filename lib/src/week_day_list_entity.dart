///WeekDays List Entity [Model]
class WeekDaysList {
  final String week;
  final String name;
  bool isSelected;

  WeekDaysList(
      {required this.week, required this.name, required this.isSelected});
}

enum WeekDayName {
  monday("monday"),
  tuesday("tuesday"),
  wednesday("wednesday"),
  thursday("thursday"),
  friday("friday"),
  saturday("saturday"),
  sunday("sunday");

  const WeekDayName(this.text);
  final String text;
}
