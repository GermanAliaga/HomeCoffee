import 'package:flutter/material.dart';
import 'package:homecoffee/pages/coffepreparationcard.dart';
import 'package:homecoffee/pages/mydrawer.dart';

class MiBarista extends StatefulWidget {
  const MiBarista({super.key});

  @override
  State<MiBarista> createState() => _MiBaristaState();
}

class _MiBaristaState extends State<MiBarista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi Barista'),
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
                    child: const CoffeCard(),
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ));
  }
}
