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
  List<double> sliderValues = [];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    try {
      final String response =
          await rootBundle.loadString("assets/tuopinion.json");
      final data = await json.decode(response);
      setState(() {
        items = data["preguntas"] ?? [];
        sliderValues =
            List<double>.filled(items.length, 0); // Inicializa los sliders
      });
      print(items); // Debug para verificar la carga
    } catch (e) {
      print('Error al cargar el archivo JSON: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tu opinión"),
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
                    return Card(
                      key: ValueKey(index),
                      margin: const EdgeInsets.all(5),
                      color: const Color.fromARGB(249, 232, 169, 122),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index]["titulo"] ?? "",
                              style: const TextStyle(fontSize: 17),
                            ),
                            Text(
                              items[index]["opciones"] ?? "",
                              style: const TextStyle(fontSize: 12),
                            ),
                            Slider(
                              value: sliderValues[index],
                              max: 5,
                              divisions: 5,
                              label: sliderValues[index].round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  sliderValues[index] = value;
                                });
                              },
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('0', style: TextStyle(fontSize: 12)),
                                Text('5', style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            : const Center(
                child:
                    CircularProgressIndicator()), // Indicador de carga mientras se cargan los datos
      ),
    );
  }
}
