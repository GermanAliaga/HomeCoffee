import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffee/pages/addcoffees.dart';
import 'package:homecoffee/models/person.dart';

class PersonCard extends StatefulWidget {
  const PersonCard({super.key});

  @override
  State<PersonCard> createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {
  String starImg = "assets/icons/216411_star_icon.svg";
  String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";
  Person JoeDoe = new Person();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              children: [
                SvgPicture.asset(starImg,
                    semanticsLabel: 'calification', width: 40),
                Text(
                  JoeDoe.calificacion,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            SvgPicture.asset(personImg,
                semanticsLabel: 'image profile', width: 90),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddCoffees()));
                },
                child: Icon(Icons.add))
          ]),
          Text(
            JoeDoe.nombre,
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'Tus preparaciones:',
            style: TextStyle(fontSize: 20),
          ),
        ]),
      )),
    );
  }
}
