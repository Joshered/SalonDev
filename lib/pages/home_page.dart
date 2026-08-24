import 'package:flutter/material.dart';
import 'event_page.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/img1.png"),
          const Text("Ansyncof 2026",
            style: TextStyle(
              fontSize: 42,
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text("Salon Virtuel de l'informatique du 27 au 29 octobre 2026",
            style: TextStyle(
                fontSize: 24
            ),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.all(5)),
          ElevatedButton.icon(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed: () => {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => EventPage()
                    )
                )
              },
              label: Text("Afficher le panning",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
              icon: Icon(Icons.calendar_month)
          )
        ],
      ),
    );
  }
}
