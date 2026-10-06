import 'package:flutter/material.dart';

class SwitchSalutation extends StatefulWidget {
  const SwitchSalutation({super.key});

  @override
  State<SwitchSalutation> createState() => _SwitchSalutationState();
}

class _SwitchSalutationState extends State<SwitchSalutation> {
  var salutation = "bonjour";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jouer aux salutations')),
      body: Center(
        child: Text(salutation),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: (){
          setState(() {
            switch(salutation){
              case 'bonjour':
                salutation = 'bonsoir';
                break;
              case 'bonsoir':
                salutation = 'bonjour';
                break;
              default:
                break;
            }
          });
        }, child: Icon(Icons.switch_access_shortcut_add_outlined)
      ),
    );
  }
}
