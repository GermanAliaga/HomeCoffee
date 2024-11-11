import 'package:flutter/material.dart';
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
