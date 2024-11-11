import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffee/pages/addcoffees.dart';
import 'package:homecoffee/pages/coffepreparationcard.dart';
import 'package:homecoffee/pages/favcoffees.dart';
import 'package:homecoffee/pages/iniciosesion.dart';
import 'package:homecoffee/models/person.dart';
import 'package:homecoffee/pages/mydrawer.dart';
import 'package:homecoffee/pages/personcard.dart';
import 'package:homecoffee/pages/searchbar.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";
  String starImg = "assets/icons/216411_star_icon.svg";
  Person JoeDoe = new Person();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: MyDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFixedExtentList(
            itemExtent: 300.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child: PersonCard(),
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
                  child: CoffeCard(),
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
