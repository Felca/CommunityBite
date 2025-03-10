import 'package:flutter/material.dart';
import '../widgets/event_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NamaAplikasi"),
        centerTitle: true,
        backgroundColor: Colors.amber[50],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(0),
        child: Container(
          padding: EdgeInsets.all(24),
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          
          child: ListView(
            children: [
              SizedBox(height: 8),
              EventList(time: '13:00 PM', location: 'Jakarta', title: 'Hello', events: ["event1"],),
              EventList(time: '13:00 PM', location: 'Jakarta', title: 'Hello', events: ["event1"],),
              EventList(time: '13:00 PM', location: 'Jakarta', title: 'Hello', events: ["event1"],),
              EventList(time: '13:00 PM', location: 'Jakarta', title: 'Hello', events: ["event1"],),
              EventList(time: '13:00 PM', location: 'Jakarta', title: 'Hello', events: ["event1"],),
              SizedBox(height: 16),
            ],
          ),
        ),
      )
    );
  }
}
