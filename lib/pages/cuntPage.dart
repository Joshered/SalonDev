import 'package:flutter/material.dart';

class CuntPage extends StatefulWidget {
  const CuntPage({super.key});

  @override
  State<CuntPage> createState() => _CuntPageState();
}

class _CuntPageState extends State<CuntPage> {
  int cunt_nuber =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Mon compeur')),
        body: Center(child: Text('Joahered develloppeur $cunt_nuber')),
        floatingActionButton: ElevatedButton(
            onPressed: (){
              setState(() {
                cunt_nuber += 1;
              });
            }, 
            child: Icon(Icons.add),),
      );
  }
}

