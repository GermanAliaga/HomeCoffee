import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffee/pages/detailcoffeecard.dart';

class Commentcard extends StatelessWidget {
  const Commentcard({super.key});

  @override
  Widget build(BuildContext context) {
    String coffeImg = "assets/icons/5404318_coffee_cup_glass_hot_icon.svg";
    String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";

    return Scaffold(
        body: Center(
            child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
          width: 450,
          height: 200,
          child: Card(
            elevation: 10,
            color: Color.fromARGB(248, 250, 239, 229),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(personImg,
                          semanticsLabel: 'perfil image', width: 50),
                      Text(
                        'Nombre usuario',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  const Text(
                    'Lo que más me gusta de este café es que es refrescante, dulce y amargo, una mezcla perfecta.',
                    style: TextStyle(fontSize: 15),
                    maxLines: 5,
                  ),
                ]),
          )),
    )));
  }
}
