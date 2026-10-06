// importation
import 'package:flutter/material.dart';
import 'package:tuto1/pages/add_event_page.dart';
import 'package:tuto1/pages/event_page.dart';
import 'package:tuto1/pages/home_page.dart';

// E:\flutter\flutter\bin\flutter.bat --no-color run --machine --track-widget-creation --device-id=emulator-5554 --start-paused --dart-define=flutter.inspector.structuredErrors=true --devtools-server-address=http://127.0.0.1:9100 --no-enable-impeller lib\main.dart
// methode principale
void main() {
  runApp(const MyApp1());
}
class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ma Boutique',
      home: Scaffold(
        appBar: AppBar(title: Text('LukMarkt')),
        body: Center(child: Text('Yered concepteur')),
      ),
    );
  }
}


// classe a appeler
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrentPage(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: [
            Text("Acceuil"),
            Text("liste des conferences"),
            Text("Formulaire"),
          ][_currentIndex],
        ),
        body: [
          HomePage(),
          EventPage(),
          AddEventPage()
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          // proprietes
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentPage(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          iconSize: 32,
          elevation: 10,

          items: const[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Acceuil'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'Planning'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Ajout'
            ),
          ]),
      ),
    );
  }
}
