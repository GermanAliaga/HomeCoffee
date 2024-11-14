import 'package:flutter/material.dart';
import 'package:homecoffee/pages/mydrawer.dart';
import 'package:homecoffee/pages/coffepreparationcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFixedExtentList(
            itemExtent: 250.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child:
                      const CoffeCard(), // Asegúrate de que CoffeCard funcione correctamente
                );
              },
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
