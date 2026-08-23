import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {

  final events = [
    {
      "speaker": "Josh Yered",
      "date": "13h à 13h30",
      "subject": "Le code legacy",
      "avatar": "lior"
    },
    {
      "speaker": "Tonton b",
      "date": "18h07 à 19h31",
      "subject": "efoot2017",
      "avatar": "tonton"
    },
    {
      "speaker": "Eliel",
      "date": "13h à 13h30",
      "subject": "Le code legacy",
      "avatar": "lior"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context,index){
            final event = events[index];
            final avatar = event['avatar'];
            final speaker = event['speaker'];
            final date = event['date'];
            final subject = event['subject'];

            return Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text("$subject"),
                subtitle: Text("$speaker"),
                trailing: Icon(Icons.more_vert),
              ),
            );
          },

        ),
      ),
    );
  }
}
