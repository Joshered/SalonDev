import 'package:flutter/material.dart';

class JourUn extends StatefulWidget {
  const JourUn({super.key});

  @override
  State<JourUn> createState() => _JourUnState();
}

class _JourUnState extends State<JourUn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
          bottom: TabBar(
            tabs: [
              Tab(text: "Tous"),
              Tab(text: "Vérifiés"),
              Tab(text: "En attente")
            ],

            //   comportements
            isScrollable: false, //false partage la largeur et true comme vidmate
            physics: BouncingScrollPhysics(),

            //indicateur - petite bar sous selectioné
            indicatorColor: Theme.of(context).colorScheme.background, //couleur
            indicatorWeight: 3.0, //epaisseur defaut 2.0
            indicatorSize: TabBarIndicatorSize.tab, //tab = longeur onget, label= juste le texte
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10), //marge de la barre
            // indicator: BoxDecoration(
            //   color: Theme.of(context).colorScheme.background,
            //   borderRadius: BorderRadius.circular(10)
            // ), // pour entourer l'ongle en entier

            //couleur text et icone
            labelColor: Theme.of(context).colorScheme.shadow, //quand tu selectionne
            unselectedLabelColor: Theme.of(context).colorScheme.surface, //quand pas selectionner
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), //style
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

            //espacement
            labelPadding: EdgeInsets.symmetric(horizontal: 20), //espace entre onglet
            padding: EdgeInsets.all(3), //padding de tout tab

            //effet au clique
            //overlayColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.secondary),
            splashFactory: NoSplash.splashFactory, //enlever effet eclabussure
            splashBorderRadius: BorderRadius.circular(10),

            //autre
            onTap: (index) {}, //fonction appeller au clic
            mouseCursor: SystemMouseCursors.click, //curcur sur web
            //enableFeedback: true, //vibration au clique

            //alignement
            tabAlignment: TabAlignment.fill,

          ), //bar au dessus

          // forme
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        body : Container(
          child: Text("Mon jeu demare"),
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary, borderRadius: BorderRadius.circular(12)),
        )

      )
    );
  }
}
