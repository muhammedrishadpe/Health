import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../components/constent.dart';

class Calendar extends StatelessWidget {
  const Calendar({
    Key? key,
    required CalendarFormat calendarFormat,
  })  : _calendarFormat = calendarFormat,
        super(key: key);

  final CalendarFormat _calendarFormat;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      calendarFormat: _calendarFormat,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleTextStyle: TextStyle(fontSize: 0),
        formatButtonTextStyle: TextStyle(fontSize: 0),
        leftChevronVisible: false,
        rightChevronVisible: false,
        formatButtonShowsNext: false,
      ),
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
        CalendarFormat.week: 'Week',
      },
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: Colors.grey),
        weekendStyle: TextStyle(color: Colors.grey),
      ),
      calendarStyle: CalendarStyle(
        cellAlignment: Alignment.center,
        todayTextStyle:
            const TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
        selectedDecoration: BoxDecoration(
          color: yellow,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(color: yellow, shape: BoxShape.circle),
      ),
    );
  }
}
