import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/event_list.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime today = DateTime.now(); 

  final Map<DateTime, List<String>> events = {
    DateTime.utc(2025, 3, 21): ['Meeting with Team', 'Lunch with Client'],
    DateTime.utc(2025, 3, 22): ['Project Deadline', 'Evening Yoga'],
    DateTime.utc(2025, 3, 23): ['Travel to Jakarta'],
  };

  void _onDaySelected (DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.lime[400],
          fontSize: 20,
          fontWeight: FontWeight.w800,
          letterSpacing: 5
        ),
        backgroundColor: const Color.fromARGB(255, 67, 160, 72),
      ),
      body: Column(
        children: [
          TableCalendar(
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true
            ),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today, 
            firstDay: DateTime.utc(2010, 10, 16), 
            lastDay: DateTime.utc(2030, 3, 14),
            onDaySelected: _onDaySelected,
          ),
          Container(
            
            padding: EdgeInsets.all(12),
            child: EventList(
              time: "01:00 AM", 
              title: "Scheduled Events", 
              location: "Various Location", 
              events: ["event1"]
            ),
          )
        ],
      )
    );
  }
}