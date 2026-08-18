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
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text("conference 1"),
                subtitle: Text("description"),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text("conference 2"),
                subtitle: Text("description"),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text("conference 3"),
                subtitle: Text("description"),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text("conference 4"),
                subtitle: Text("description"),
                trailing: Icon(Icons.info),
              ),
            ),
          ],
        ),
      ),
    );
  }
}