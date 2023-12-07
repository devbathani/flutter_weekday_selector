///WeekDays List Entity [Model]
class WeekDay {
  String week;
  String name;
  bool isSelected;

  WeekDay({required this.week, required this.name, required this.isSelected});
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
