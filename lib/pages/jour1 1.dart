import 'package:flutter/material.dart';

class JourUn extends StatefulWidget {
  const JourUn({super.key});

  @override
  State<JourUn> createState() => _JourUnState();
}

class _JourUnState extends State<JourUn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeux d\'incrementation'),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
      ),
    );
  }
}
