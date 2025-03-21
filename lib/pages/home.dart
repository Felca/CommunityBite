import 'package:flutter/material.dart';
import '../widgets/event_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community Bites"),
        titleTextStyle: TextStyle(
          color: Colors.lime[400],
          fontSize: 20,
          fontWeight: FontWeight.w800,
          letterSpacing: 5
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 67, 160, 72),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // UPCOMING EVENTS BOX
              Container(
                padding: EdgeInsets.all(24),
                height: 250,
                decoration: BoxDecoration(
                  color: Color.fromARGB(95, 218, 255, 187),
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upcoming Events",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800],
                      ),
                    ),
                    SizedBox(height: 12),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        children: [
                          EventList(time: '13:00 PM', location: 'Jakarta', title: 'Hello', events: ["event1"]),
                          EventList(time: '14:00 PM', location: 'Bandung', title: 'World Meetup', events: ["event2"]),
                          EventList(time: '15:30 PM', location: 'Surabaya', title: 'Tech Talk', events: ["event3"]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // PAST EVENTS BOX
              Container(
                padding: EdgeInsets.all(24),
                height: 250,
                decoration: BoxDecoration(
                  color: Color.fromARGB(95, 255, 231, 187),
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Past Events",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[800],
                      ),
                    ),
                    SizedBox(height: 12),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        children: [
                          EventList(time: '10:00 AM', location: 'Yogyakarta', title: 'Morning Talk', events: ["eventPast1"]),
                          EventList(time: '09:00 AM', location: 'Semarang', title: 'Breakfast Meetup', events: ["eventPast2"]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
