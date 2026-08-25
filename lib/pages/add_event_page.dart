import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  
  final _formKey = GlobalKey<FormState>();

  // controller
  final conferenceNameController = TextEditingController();
  final speakerNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    conferenceNameController.dispose();
    speakerNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // nom du conference
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'nom conference',
                  hintText: 'Entrez le nom de la conference',
                  border: OutlineInputBorder()
                ),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return "Le champ doit etre remplis";
                  }
                  return null;
                },
                controller: conferenceNameController,
              ),
            ),
            // chamo nom conferencier
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'nom du speaker',
                    hintText: 'Entrez le nom du speaker',
                    border: OutlineInputBorder()
                ),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return "Le champ doit etre remplis";
                  }
                  return null;
                },
                controller: speakerNameController,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  if (_formKey.currentState!.validate()){
                    // recuperer le valeur
                    final confName = conferenceNameController.text;
                    final speakerName = speakerNameController.text;

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Envoi en cours..."))
                    );
                    FocusScope.of(context).requestFocus(FocusNode());
                  }
                },
                child: Text("Envoyer")
              ),
            )
          ],
        )
      ),
    );
  }
}

