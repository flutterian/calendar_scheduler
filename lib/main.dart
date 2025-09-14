import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime(1990, 1, 1),
            lastDay: DateTime(2999, 12, 31),
            selectedDayPredicate: (DateTime day) {
              final now = DateTime.now();
              return DateTime(
                day.year,
                day.month,
                day.day,
              ).isAtSameMomentAs(DateTime(now.year, now.month, now.day));
            },
            onDaySelected: (DateTime selectedDay, DateTime focusedDay) {},
            onPageChanged: (DateTime focusedDay) {},
            rangeSelectionMode: RangeSelectionMode.toggledOff,
            onRangeSelected:
                (DateTime? start, DateTime? end, DateTime focusedDay) {},
          ),
        ),
      ),
    ),
  );
}
