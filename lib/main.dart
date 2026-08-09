import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// E:\flutter\flutter\bin\flutter.bat --no-color run --machine --track-widget-creation --device-id=emulator-5554 --start-paused --dart-define=flutter.inspector.structuredErrors=true --devtools-server-address=http://127.0.0.1:9100 --no-enable-impeller lib\main.dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: Text("Prochenement disponible"),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asyncof 2026"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/img1.png"),
            const Text("Ansyncof 2026",
              style: TextStyle(
                fontSize: 42,
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("Salon Virtuel de l'informatique du 27 au 29 octobre 2026",
              style: TextStyle(
                fontSize: 24
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(5)),
            ElevatedButton.icon(
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => EventPage()
                  )
                )
              },
              label: Text("Afficher le panning",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              icon: Icon(Icons.calendar_month)
            )
          ],
        ),
      ),
    );
  }
}
