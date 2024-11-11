import 'package:flutter/material.dart';
import 'package:homecoffee/pages/bottomnavigationbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Center(
          child: Card(
        elevation: 10,
        color: Color.fromARGB(248, 250, 239, 229),
        child: SizedBox(
            width: 450,
            height: 520,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Volver')),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BottomNavigationBarExample()));
                          },
                          child: const Text('Siguiente')),
                    ],
                  ),
                ])),
      )),
    );
  }
}
