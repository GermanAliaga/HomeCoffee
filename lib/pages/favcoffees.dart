import 'package:flutter/material.dart';
import 'package:homecoffee/pages/coffepreparationcard.dart';

class FavoriteCoffees extends StatefulWidget {
  const FavoriteCoffees({super.key});

  @override
  State<FavoriteCoffees> createState() => _FavoriteCoffeesState();
}

class _FavoriteCoffeesState extends State<FavoriteCoffees> {
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preparaciones favoritas'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
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
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
