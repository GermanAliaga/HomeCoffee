import 'package:flutter/material.dart';
import 'package:homecoffee/models/person.dart';
import 'package:homecoffee/pages/mydrawer.dart';
import 'package:homecoffee/pages/personcard.dart';
import 'package:homecoffee/pages/coffepreparationcard.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";
  String starImg = "assets/icons/216411_star_icon.svg";
  Person JoeDoe = Person(); // Cambio de `new` (obsoleto)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFixedExtentList(
            itemExtent: 300.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child:
                      const PersonCard(), // Asegúrate de que PersonCard funcione correctamente
                );
              },
              childCount: 1,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 250.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child: const CoffeCard(),
                );
              },
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
