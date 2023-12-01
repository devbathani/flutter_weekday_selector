import 'package:flutter/material.dart';
import 'package:flutter_weekday_selector/src/week_day_list_entity.dart';

///Week day selector widget
class WeekDaySelector extends StatefulWidget {
  const WeekDaySelector({
    super.key,
    required this.onSubmitted,
    this.height,
    this.width,
    this.shape,
    this.border,
    this.daySelectedColor,
    this.dayUnselectedColor,
    this.style,
  });

  /// Custom textstyle for the week day text
  final TextStyle? style;

  ///Custom Height
  final double? height;

  ///Custom Height
  final double? width;

  ///Custom box shape of the container
  final BoxShape? shape;

  ///Selected Color
  final Color? daySelectedColor;

  ///Unselected Color
  final Color? dayUnselectedColor;

  ///Custom Border
  final BoxBorder? border;

  ///Function to listen for selected day
  final Function(String) onSubmitted;

  @override
  State<WeekDaySelector> createState() => _WeekDaySelectorState();
}

class _WeekDaySelectorState extends State<WeekDaySelector> {
  ///Week day list
  List<WeekDaysList> weekDays = [
    WeekDaysList(week: "S", isSelected: false),
    WeekDaysList(week: "M", isSelected: false),
    WeekDaysList(week: "T", isSelected: false),
    WeekDaysList(week: "W", isSelected: false),
    WeekDaysList(week: "T", isSelected: false),
    WeekDaysList(week: "F", isSelected: false),
    WeekDaysList(week: "S", isSelected: false),
  ];

  ///Function to select weekday
  selectWeekDays(int index) {
    if (weekDays[index].isSelected) {
      weekDays[index].isSelected = false;
      setState(() {});
    } else {
      weekDays[index].isSelected = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        weekDays.length,
        (index) {
          return InkWell(
            onTap: () {
              selectWeekDays(index);
              widget.onSubmitted(weekDays[index].week);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: widget.height ?? 25,
                width: widget.height ?? 25,
                decoration: BoxDecoration(
                  shape: widget.shape ?? BoxShape.circle,
                  border: widget.border,
                  color: weekDays[index].isSelected
                      ? widget.daySelectedColor ?? Colors.blue
                      : widget.dayUnselectedColor ?? Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    weekDays[index].week,
                    style: widget.style,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
