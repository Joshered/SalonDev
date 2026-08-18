import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: ListView(
          children: [
            Text("conference 1"),
            Text("Conference 2"),
            Text("conference 3"),
            Text("Conference 4"),
          ],
        ),
      ),
    );
  }
}