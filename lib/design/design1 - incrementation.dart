import 'package:flutter/material.dart';

class Design1 extends StatefulWidget {
  const Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {
  var nb = 0;
  var textAffichier = "";



  void afficher(){
    if(nb>= 7){
      textAffichier = " vous avez gagner";
      nb = 0;
    } else if(nb <= -7){
      textAffichier = " vous avez perdu";
      nb = 0;
    } else{
      textAffichier = "Niveau $nb ${(nb >=3 && nb <= 7)?'😄':''}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IncreM'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surface,
        actions: [IconButton(onPressed: (){
          setState(() {
            nb = 0;
            afficher();
          });
        }, icon: Icon(Icons.lock_reset))],
      ),
      
      body: ListView(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end , children: [Text('$nb', style: TextStyle(fontSize: 24),), SizedBox(width: 10)],),
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            padding: EdgeInsets.all(90),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary
            ),
            child: Text('$textAffichier',style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.surface),),
          )
        ],
      ),
      
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(onPressed: (){
            setState(() {
              nb -= 1;
            });
            afficher();
          }, label: Text(('Diminuer'))),
          FloatingActionButton.extended(onPressed: (){
            setState(() {
              nb += 1;
            });
            afficher();
          }, label: Text(('Ajouter'))),
        ],
      )
    );
  }
}
