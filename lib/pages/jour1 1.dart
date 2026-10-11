import 'package:flutter/material.dart';

class JourUn extends StatelessWidget {
  const JourUn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jour 1'),),
      body: Material(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Yered'),
              Text('Josh'),
              Text('Bellamy')
            ],
          ),
        ),
      )
    );
  }
}
