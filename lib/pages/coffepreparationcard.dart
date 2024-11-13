import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffee/pages/detailcoffeecard.dart';

class CoffeCard extends StatelessWidget {
  const CoffeCard({super.key});

  @override
  Widget build(BuildContext context) {
    String coffeImg = "assets/icons/5404318_coffee_cup_glass_hot_icon.svg";
    String starImg = "assets/icons/216411_star_icon.svg";
    String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";

    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 200,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Detailcoffeecard()));
                      },
                      child: Card(
                        elevation: 10,
                        color: const Color.fromARGB(248, 250, 239, 229),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(personImg,
                                            semanticsLabel: 'perfil image',
                                            width: 50),
                                        const Text(
                                          'Nombre creador',
                                          style: TextStyle(fontSize: 15),
                                        )
                                      ],
                                    ),
                                    const Text(
                                      '"Affogato"',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    SvgPicture.asset(
                                      starImg,
                                      semanticsLabel: 'calification',
                                      width: 35,
                                    ),
                                  ]),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Este café se prepara así:\nIngredientes:\n- 100 ml de café\n- Helado de vainilla\nPreparación: ...\n',
                                    maxLines: 10,
                                  ),
                                  SvgPicture.asset(coffeImg,
                                      semanticsLabel: 'Coffee image', width: 60)
                                ],
                              ),
                            ]),
                      )),
                ))));
  }
}
