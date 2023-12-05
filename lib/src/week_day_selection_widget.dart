import 'package:flutter/material.dart';
import 'package:flutter_weekday_selector/src/week_day_list_entity.dart';
import 'package:flutter_weekday_selector/src/week_days_list_build.dart';

///Week day selector widget
class WeekDaySelector extends StatefulWidget {
  const WeekDaySelector({
    super.key,
    required this.onSubmitted,
    this.height = 100,
    this.width,
    this.shape,
    this.border,
    this.daySelectedColor,
    this.dayUnselectedColor,
    this.style,
    this.styleSelected,
    this.weekDayStart = WeekDayName.monday,
  });

  ///Week day start
  final WeekDayName weekDayStart;

  /// Custom textstyle for the week day text
  final TextStyle? style;

  /// Custom textstyle for the week day text selected
  final TextStyle? styleSelected;

  ///Custom Height
  final double height;

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
  final Function(WeekDaysList) onSubmitted;

  @override
  State<WeekDaySelector> createState() => _WeekDaySelectorState();
}

class _WeekDaySelectorState extends State<WeekDaySelector> {
  ///Week day list
  late List<WeekDaysList> weekDays;

  @override
  void initState() {
    super.initState();
    weekDays =
        WeekDaysListBuild(dayStart: widget.weekDayStart.text).weekDaysList;
  }

  ///Select on drag
  bool select = true;

  ///Function to select weekday
  selectWeekDays(int index, {bool? isSelected}) {
    if (isSelected != null) {
      setState(() {
        weekDays[index].isSelected = isSelected;
      });
      return;
    }

    if (weekDays[index].isSelected) {
      setState(() {
        weekDays[index].isSelected = false;
      });
    } else {
      setState(() {
        weekDays[index].isSelected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //default width

    final defaultWith = widget.width ?? MediaQuery.of(context).size.width;
    final double withIcon = widget.width == null
        ? (defaultWith - 70) / 7
        : (widget.width! - 70) / 7;

    return SizedBox(
      width: defaultWith,
      height: widget.height,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            weekDays.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  selectWeekDays(index);
                  widget.onSubmitted(weekDays[index]);
                },
                onPanStart: (details) {
                  selectWeekDays(index);
                  widget.onSubmitted(weekDays[index]);
                  select = weekDays[index].isSelected;
                },
                onPanUpdate: (details) {
                  double wWidth = withIcon;
                  double width = (wWidth +
                      (details.localPosition.dx < wWidth + 5 ? 0 : 15));

                  int xDrag = (details.localPosition.dx / width).round();
                  int indexDrag = index + xDrag;
                  if (indexDrag < 0) indexDrag = 0;
                  if (indexDrag > 6) indexDrag = 6;
                  if (weekDays[indexDrag].isSelected == !select) {
                    selectWeekDays(indexDrag, isSelected: select);
                    widget.onSubmitted(weekDays[indexDrag]);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    height: widget.height,
                    width: withIcon,
                    decoration: BoxDecoration(
                      shape: widget.shape ?? BoxShape.circle,
                      border: widget.border,
                      color: weekDays[index].isSelected
                          ? widget.daySelectedColor ?? Colors.blue
                          : widget.dayUnselectedColor ?? Colors.transparent,
                    ),
                    child: Center(
                      child: Text(weekDays[index].week,
                          style: weekDays[index].isSelected
                              ? widget.styleSelected ??
                                  const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )
                              : widget.style),
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
