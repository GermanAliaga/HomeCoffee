import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homecoffee/pages/detailcoffeecard.dart';
import 'package:homecoffee/pages/mydrawer.dart';

class Mibarista extends StatefulWidget {
  const Mibarista({super.key});
  @override
  State<Mibarista> createState() => _MibaristaState();
}

class _MibaristaState extends State<Mibarista> {
  List items = [];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    try {
      final String response =
          await rootBundle.loadString("assets/recetas.json");
      final data = await json.decode(response);
      setState(() {
        items = data["recetas"] ?? [];
      });
    } catch (e) {
      print('Error al cargar el archivo JSON: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi barista"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: items.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Detailcoffeecard()));
                        },
                        child: Card(
                          key: ValueKey(items[index]["id"]),
                          margin: const EdgeInsets.all(5),
                          color: const Color.fromARGB(248, 255, 192, 143),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  items[index]["nombre"],
                                  style: const TextStyle(fontSize: 17),
                                ),
                                Text(
                                  items[index]["tiempo"],
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ));
                  },
                ),
              )
            : const Center(
                child: CircularProgressIndicator()), // Indicador de carga
      ),
    );
  }
}
