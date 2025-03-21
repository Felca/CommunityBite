import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.lime[400],
          fontSize: 20,
          fontWeight: FontWeight.w800,
          letterSpacing: 5
        ),
        backgroundColor: const Color.fromARGB(255, 67, 160, 72),
      ),
      body: Center(child: Text("User Profile Here")),
    );
  }
}
