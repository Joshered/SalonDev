import 'package:flutter/material.dart';

class CuntPage extends StatefulWidget {
  const CuntPage({super.key});

  @override
  State<CuntPage> createState() => _CuntPageState();
}

class _CuntPageState extends State<CuntPage> {
  int _compteur =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LukMarket', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.store, size: 80, color: Colors.green),
            SizedBox(height: 20),
            Text('Bienvenue !', style: TextStyle(fontSize: 28)),
            SizedBox(height: 20),
            Text('Sacs ajoutés : $_compteur', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _compteur = _compteur + 1;
                });
              },
              child: Text('Ajouter un sac'),
            ),
          ],
        ),
      ),
    );
  }
}

