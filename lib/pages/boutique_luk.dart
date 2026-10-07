import 'package:flutter/material.dart';

class BoutiqueLuk extends StatelessWidget {
  const BoutiqueLuk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ma Boutique')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Une ligne
          Row(
            children: [
              Icon(Icons.store, color: Colors.green, size: 40),
              SizedBox(width: 10),
              Text('Boutique Lukanga', style: TextStyle(fontSize: 24)),
            ],
          ),

          SizedBox(height: 20),

          // Une grille de produits
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Card(child: Center(child: Text('Haricot'))),
              Card(child: Center(child: Text('Maïs'))),
              Card(child: Center(child: Text('Soja'))),
              Card(child: Center(child: Text('Arachide'))),
            ],
          ),
        ],
      ),
    );
  }
}
