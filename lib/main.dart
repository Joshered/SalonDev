// importation
import 'package:flutter/material.dart';
import 'package:tuto1/pages/home_page.dart';

// E:\flutter\flutter\bin\flutter.bat --no-color run --machine --track-widget-creation --device-id=emulator-5554 --start-paused --dart-define=flutter.inspector.structuredErrors=true --devtools-server-address=http://127.0.0.1:9100 --no-enable-impeller lib\main.dart
// methode principale
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




