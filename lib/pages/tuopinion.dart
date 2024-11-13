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
              itemExtent: 250.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    key: ValueKey(items[index]["id"]),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        //Text(items[index]["titulo"]),
                        //Text(items[index]["rango"]),
                      ],
                    ),
                  );
                },
                childCount: items.length,
              ),
            ),
          ],
        ));
  }
}

/*Padding(
            padding: const EdgeInsets.all(25),
            child: Column(children: [
              ElevatedButton(
                  onPressed: readJson, child: const Text("Cargar...")),
              items.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                      // En este builder vamos a recorrer cada uno de los elementos de la List "items" que ya estan cargados del archivo data.json
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Card(
                            key: ValueKey(items[index]["id"]),
                            margin: const EdgeInsets.all(10),
                            color: Colors.amber.shade100,
                            child: ListTile(
                              minLeadingWidth: 200,
                              title: Text(items[index]["titulo"]),
                              leading: Text(items[index]["rango"]),
                            ));
                      },
                    ))
                  : Container()
            ]))*/