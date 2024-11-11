import 'package:flutter/material.dart';

class Comentar extends StatefulWidget {
  const Comentar({super.key});

  @override
  State<Comentar> createState() => _Comentar();
}

class _Comentar extends State<Comentar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Comenta',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Comentar'))
          ],
        ),
      ),
    ));
  }
}
