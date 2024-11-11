import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffee/pages/bottomnavigationbar.dart';
import 'package:homecoffee/pages/coffepreparationcard.dart';
import 'package:homecoffee/pages/mydrawer.dart';
import 'package:homecoffee/pages/myhomepage.dart';
import 'package:homecoffee/pages/searchbar.dart';

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
        drawer: MyDrawer(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverFixedExtentList(
              itemExtent: 250.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    child: CoffeCard(),
                  );
                },
                childCount: 15,
              ),
            ),
          ],
        ));
  }
}
