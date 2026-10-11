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
        //a gauche
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu)),

        // au centre
        title: Text('Jeux d\'incrementation'),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

        //a droite
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.lock_reset)),IconButton(onPressed: (){}, icon: Icon(Icons.settings)),],

        //style
        backgroundColor: Theme.of(context).colorScheme.primary, //background
        foregroundColor: Theme.of(context).colorScheme.background,
        elevation: 4, //ombre
        shadowColor: Theme.of(context).colorScheme.secondary,

        //taiille
        toolbarHeight: 60,
        //bottom: TabBar(tabs: [Tab(text: "Tous"), Tab(text: "Vérifiés")]), //bar au dessus
        
        // forme
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),

      ),
    );
  }
}
