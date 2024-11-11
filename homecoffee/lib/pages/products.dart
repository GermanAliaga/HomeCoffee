import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffee/pages/bottomnavigationbar.dart';
import 'package:homecoffee/pages/coffepreparationcard.dart';
import 'package:homecoffee/pages/myhomepage.dart';
import 'package:homecoffee/pages/productscard.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<int> bottom = <int>[15];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos disponibles'),
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
                  child: ProductsCard(),
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
