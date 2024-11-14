import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffee/pages/comments.dart';

class Detailcoffeecard extends StatefulWidget {
  const Detailcoffeecard({
    super.key,
    /*required this.Nombre,
    required this.Tiempo,
    required this.Ingredientes,
    required this.Productos,
    required this.Pasos,*/
  });

  /*final String Nombre;
  final String Tiempo;
  final String Ingredientes;
  final String Productos;
  final String Pasos;*/

  @override
  State<Detailcoffeecard> createState() => _DetailCardState();
}

class _DetailCardState extends State<Detailcoffeecard> {
  String coffeeImg = "assets/icons/5404318_coffee_cup_glass_hot_icon.svg";
  String starImg = "assets/icons/216411_star_icon.svg";
  String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Detalle'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  personImg,
                  semanticsLabel: 'profile picture',
                  width: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '"Affogato"',
                      style:
                          TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          starImg,
                          semanticsLabel: 'calification',
                          width: 40,
                        ),
                        Text(
                          '4.7',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      coffeeImg,
                      semanticsLabel: 'coffee',
                      width: 80,
                    )
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'tiempo: 10 min',
                    style: TextStyle(fontSize: 15),
                  ),
                ]),
                Text(
                  'Ingredientes:\n- 100 ml de café\n- Helado de vainilla',
                  maxLines: 5,
                ),
                Text(
                  'Productos:\n- Cafetera a elección\n- Taza',
                  maxLines: 5,
                ),
                Text(
                  '1. Preparar un shot de espresso bien caliente utilizando una máquina de espresso o una cafetera espresso.\n2. Colocar una bola de helado en una taza resistente al calor o una copa.\n3. Verter inmediatamente el espresso caliente sobre la bola de helado. El calor del café comenzará a derretir suavemente el helado.',
                  maxLines: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Comments()));
                  }, //dentro de las {} debería de ir el Dialog :p
                  child: const Text('Comentarios'),
                )
              ],
            ),
          ),
        ));
  }
}
