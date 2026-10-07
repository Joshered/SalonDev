import 'package:flutter/material.dart';

class ChateauLego extends StatelessWidget {
  const ChateauLego({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chateau Stylé')),
      body: Center(
        // child: Row(
        //   children: [
        //     Icon(Icons.grass),
        //     Text('Haricot'),
        //     Text('4000 FC')
        //   ],
        // ),
        // child: Column(
        //   children: [
        //     Text('Titre'),
        //     Text('Sous titre'),
        //     Text('Mon text')
        //   ],
        // // ),
        // child: Stack(
        //   children: [
        //     Container(height: 200, color: Colors.green),
        //     Positioned(
        //       top: 10, left: 10,
        //         child: Text('Promo !')
        //     )
        //   ],
        // ),

        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i){
            return ListTile(title: Text('Produit ${i+1}'));
          }
        ),

      )
    );
  }
}
