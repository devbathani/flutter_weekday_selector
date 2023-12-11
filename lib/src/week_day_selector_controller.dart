import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weekday_selector/flutter_weekday_selector.dart';

///WeekDaySelectorController is the controller for the WeekDaySelector
///It is used to control the state of the WeekDaySelector
///It is used to get the state of the WeekDaySelector
///
///Example
///```dart
///WeekDaySelectorController weekDaySelectorController = WeekDaySelectorController();
///
/// //update Monday same values [name], [isSelected]
/// weekDaySelectorController.setMonday(isSelected: true);
///
/// ```
///
class WeekDaySelectorController extends ChangeNotifier {
  List<WeekDay> _weekDaysList = [];

  get weekDaysList => _weekDaysList;

  WeekDaySelectorController({List<WeekDay>? weekDaysList}) {
    // _weekDaysList =
    //     weekDaysList ?? WeekDaysListBuild(dayStart: "sunday").weekDaysList;
  }

  setWeekDaysList(wL) {
    _weekDaysList = wL;
  }

  ///Monday
  WeekDay get monday =>
      _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "monday")];

  ///set Monday values  [name], [isSelected]
  setMonday({String? name, bool? isSelected}) {
    WeekDay d =
        _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "monday")];
    d.isSelected = isSelected ?? !d.isSelected;
    d.name = name ?? d.name;
    notifyListeners();
  }

  ///Tuesday
  WeekDay get tuesday =>
      _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "tuesday")];

  ///set Tuesday [name], [isSelected]
  setTuesday({String? name, bool? isSelected}) {
    WeekDay d =
        _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "tuesday")];
    d.isSelected = isSelected ?? !d.isSelected;
    d.name = name ?? d.name;
    notifyListeners();
  }

  ///Wednesday
  WeekDay get wednesday =>
      _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "wednesday")];

  ///set Wednesday values [name], [isSelected]
  setWednesday({String? name, bool? isSelected}) {
    WeekDay d =
        _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "wednesday")];
    d.isSelected = isSelected ?? !d.isSelected;
    d.name = name ?? d.name;
    notifyListeners();
  }

  ///Thursday
  WeekDay get thursday =>
      _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "thursday")];

  ///set Thursday values [name], [isSelected]
  setThursday({String? name, bool? isSelected}) {
    WeekDay d =
        _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "thursday")];
    d.isSelected = isSelected ?? !d.isSelected;
    d.name = name ?? d.name;
    notifyListeners();
  }

  ///Friday
  WeekDay get friday =>
      _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "friday")];

  ///set Friday values  [name], [isSelected]
  setFriday({String? name, bool? isSelected}) {
    WeekDay d =
        _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "friday")];
    d.isSelected = isSelected ?? !d.isSelected;
    d.name = name ?? d.name;
    notifyListeners();
  }

  ///Saturday
  WeekDay get saturday =>
      _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "saturday")];

  ///set Saturday values  [name], [isSelected]
  setSaturday({String? name, bool? isSelected}) {
    WeekDay d =
        _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "saturday")];
    d.isSelected = isSelected ?? !d.isSelected;
    d.name = name ?? d.name;
    notifyListeners();
  }

  ///Sunday
  WeekDay get sunday =>
      _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "sunday")];

  ///set Sunday values  [name], [isSelected]
  setSunday({String? name, bool? isSelected}) {
    WeekDay d =
        _weekDaysList[_weekDaysList.indexWhere((e) => e.name == "sunday")];
    d.isSelected = isSelected ?? !d.isSelected;
    d.name = name ?? d.name;
    notifyListeners();
  }
}
