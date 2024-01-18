import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime today = DateTime.now();

  void _ondayselected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: TableCalendar(
                  locale: "en_US",
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  focusedDay: today,
                  availableGestures: AvailableGestures.all,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 09, 06),
                  onDaySelected: _ondayselected,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text("Selected Day = " + today.toString().split(" ")[0]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
