import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text("conference 1"),
                subtitle: Text("description"),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
