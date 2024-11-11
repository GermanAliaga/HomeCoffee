import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({super.key});

  @override
  Widget build(BuildContext context) {
    String coffeeMachineImg = "assets/icons/889377_italian_coffee_machine.svg";

    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    List<int> bottom = <int>[0];

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
                        SvgPicture.asset(coffeeMachineImg,
                            semanticsLabel: 'producto', width: 80),
                        Column(
                          children: [
                            const Text(
                              'Cafetera italiana',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'clasificación: Instrumento',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        const Text(
                          '16.000 clps',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Text(
                      'Descripción:',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'También conocida como Moka, es un dispositivo icónico que utiliza el principio de la evaporación y la presión para preparar un café intenso y aromático. Su diseño consta de tres cámaras: una inferior para el agua, una intermedia para el café molido y una superior para el café preparado.',
                      maxLines: 10,
                      style: TextStyle(fontSize: 10),
                    ),
                  ]))),
    )));
  }
}
