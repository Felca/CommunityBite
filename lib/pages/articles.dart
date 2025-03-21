import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articles"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.lime[400],
          fontSize: 20,
          fontWeight: FontWeight.w800,
          letterSpacing: 5
        ),
        backgroundColor: const Color.fromARGB(255, 67, 160, 72),
      ),
      body: Center(child: Text("Articles List Here")),
    );
  }
}
