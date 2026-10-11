import 'package:flutter/material.dart';

class Recap11 extends StatelessWidget {
  const Recap11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mon hero'),),
      body: Material(
        elevation: 10,
        color: Theme.of(context).colorScheme.background,
        child: ListView(
            children: [
              Column(
                children: [
                  Text('nom : Joshered'),
                  SizedBox(height: 5),
                  Text('classe : mage'),
                  SizedBox(height: 5),
                  Text('niveau : 1'),
                  SizedBox(height: 5),
                  Text('pv : 100%'),
                  SizedBox(height: 5),
                  Text('xp : 22xp')
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text(
                  'Joshered',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite, color: Colors.red),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.shield, color: Colors.blue),
                ],
              )
            ]
        ),
      )
    );;
  }
}


