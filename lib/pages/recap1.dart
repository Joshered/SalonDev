import 'package:flutter/material.dart';

class Recap1 extends StatefulWidget {
  const Recap1({super.key});

  @override
  State<Recap1> createState() => _Recap1State();
}

class _Recap1State extends State<Recap1> {
  var isTrue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recap1'),),
      body: Center(child: Text('${(isTrue)?'message envoyer avec succees !':'Envoi impossible !'}',style: TextStyle(fontSize: 24, color: (isTrue)? Colors.green : Colors.red),),),
      floatingActionButton: ElevatedButton(
          onPressed: (){
            setState(() {
              (isTrue)? isTrue = false : isTrue = true;
            });
          }, child: Icon(Icons.change_circle_outlined)),
    );
  }
}

