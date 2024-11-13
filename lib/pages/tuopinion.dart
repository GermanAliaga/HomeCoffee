import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tuopinion extends StatefulWidget {
  const Tuopinion({Key? key}) : super(key: key);
  @override
  State<Tuopinion> createState() => _TuopinionState();
}

/* La clase HomePageState es nuestra clase que se va a mostrar*/
/* Cuando la clase HomePageState cambie esta le notificara los cambios a la clase HomePage */
class _TuopinionState extends State<Tuopinion> {
  List items = [];
  /* Esta es la funcion para leer el archivo data.json 
  * La lista "items" se va a llenar con los elementos "items" de  el archivo data.json  
  */
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString("assets/tuopinion.json");
    final data = await json.decode(response);
    setState(() {
      items = data["usabilidad"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Leer JSON"),
        ),
        body: Padding(
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
                            color: const Color.fromARGB(249, 232, 169, 122),
                            child: Column(children: [
                              Text(items[index][
                                  "titulo"]), // Asignamos el parametro ID del elemento
                              Text(items[index][
                                  "min"]), // Asignamos el parametro NAME del elemento
                              Text(items[index][
                                  "max"]), // Asignamos el parametro DESCRIPTION del elemento
                            ]));
                      },
                    ))
                  : Container()
            ])));
  }
}

/*import 'package:flutter/material.dart';
import 'package:homecoffee/pages/mydrawer.dart';

class TuOpinion extends StatefulWidget {
  const TuOpinion({super.key});

  @override
  State<TuOpinion> createState() => _TuOpinionState();
}

class _TuOpinionState extends State<TuOpinion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tu opinión'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        drawer: const MyDrawer(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Enviar'))
              ],
            ),
          ),
        ));
  }
}
*/