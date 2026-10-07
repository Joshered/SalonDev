import 'package:flutter/material.dart';

class Exercice extends StatelessWidget {
  const Exercice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Otaku com')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          //   Titre
          Row(
            children: [
              Icon(Icons.games, color: Colors.red, size: 64,),
              SizedBox(width: 10,),
              Text('OTAKU-ZONE', style: TextStyle(fontSize: 24))
            ],
          ),

          SizedBox(height: 10,),

          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.games_outlined, size: 24,),
                      Text('Games', style: TextStyle(fontSize: 24),)
                    ],
                  ),
                  Text('produit un')
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.video_file_outlined, size: 24,),
                      Text('Animes', style: TextStyle(fontSize: 24),)
                    ],
                  ),
                  Text('produit un')
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.pending, size: 24,),
                      Text('Chats', style: TextStyle(fontSize: 24),)
                    ],
                  ),
                  Text('produit un')
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.pending, size: 24,),
                      Text('Commn', style: TextStyle(fontSize: 24),)
                    ],
                  ),
                  Text('produit un')
                ],
              ),
            ],
          ),

          SizedBox(height: 10,),

          Text('Liste des Groupe et chaine', style: TextStyle(fontSize: 24),),


        ],
      ),
    );
  }
}
