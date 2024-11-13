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
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              items.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Card(
                            key: ValueKey(items[index]["id"]),
                            margin: const EdgeInsets.all(10),
                            color: const Color.fromARGB(249, 232, 169, 122),
                            child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(children: [
                                  Text(
                                    items[index]["titulo"],
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    items[index]["min"],
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    items[index]["max"],
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  Slider(
                                      value: 0,
                                      max: 5,
                                      divisions: 5,
                                      onChanged: (double value) {}),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '0',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        '5',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ])));
                      },
                    ))
                  : Container()
            ])));
  }
}
