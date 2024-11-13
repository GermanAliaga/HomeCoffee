import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homecoffee/pages/mydrawer.dart';

class Tuopinion extends StatefulWidget {
  const Tuopinion({super.key});

  @override
  State<Tuopinion> createState() => _TuopinionState();
}

class _TuopinionState extends State<Tuopinion> {
  List items = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString("assets/tuopinion.json");
    final data = await json.decode(response);
    setState(() {
      items = data["preguntas"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Tu opinión"),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary),
        drawer: const MyDrawer(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverFixedExtentList(
              itemExtent: 300.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      alignment: Alignment.center,
                      child: Card(
                          key: ValueKey(items[index]["id"]),
                          margin: const EdgeInsets.all(10),
                          color: const Color.fromARGB(248, 255, 160, 87),
                          child: Column(children: [
                            Text(
                              items[index]["titulo"],
                              style: const TextStyle(fontSize: 17),
                            ),
                            Text(
                              items[index]["min"],
                              style: const TextStyle(fontSize: 12),
                            ),
                            Text(
                              items[index]["max"],
                              style: const TextStyle(fontSize: 12),
                            ),
                          ])));
                },
                childCount: items.length,
              ),
            ),
          ],
        ));
  }
}
