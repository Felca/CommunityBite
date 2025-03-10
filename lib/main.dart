import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/articles.dart';
import 'package:flutter_application_1/pages/calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nama Aplikasi',
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List _pages = [
    HomeScreen(),
    CalendarScreen(),
    ArticleScreen(),
    ProfileScreen(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        selectedItemColor: Colors.amber[800], // Active tab color
        unselectedItemColor: Colors.grey, // Inactive tab color
        backgroundColor: Colors.amber[50], // Background color of navbar
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: "Articles"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class FloatingCSButton extends StatelessWidget {
  const FloatingCSButton({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          shape: CircleBorder(
            side: BorderSide(color: Colors.black, width: 2), // Black border
          ),
          child: Icon(Icons.add, color: Colors.black), // Custom icon
        )
    );
  }}