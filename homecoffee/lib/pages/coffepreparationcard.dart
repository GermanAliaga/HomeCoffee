import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffee/pages/detailcoffeecard.dart';

class CoffeCard extends StatelessWidget {
  const CoffeCard({super.key});

  void _goTo(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    String coffeImg = "assets/icons/5404318_coffee_cup_glass_hot_icon.svg";
    String starImg = "assets/icons/216411_star_icon.svg";
    String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";

    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    List<int> bottom = <int>[0];

    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 450,
                  height: 200,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detailcoffeecard()));
                      },
                      child: Card(
                        elevation: 10,
                        color: Color.fromARGB(248, 250, 239, 229),
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
                                        Text(
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
                                    'Este café se prepara de la siguiente manera:\nIngredientes:\n- 100 ml de café\n- Helado de vainilla\nPreparación: ...\n',
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
