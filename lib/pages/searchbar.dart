import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchImg = "assets/icons/211817_search_strong_icon.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      searchImg,
                      semanticsLabel: 'search',
                      width: 70,
                    ),
                    const Text(
                      'Ingredientes:',
                      style: TextStyle(fontSize: 15),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(248, 255, 206, 160));
                              });
                            },
                            child: const Text('+Leche')),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(248, 255, 206, 160));
                              });
                            },
                            child: const Text('+Crema')),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(248, 255, 206, 160));
                              });
                            },
                            child: const Text('+Café')),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(248, 255, 206, 160));
                              });
                            },
                            child: const Text('+Azúcar')),
                      ],
                    ),
                    const Text(
                      'Productos:',
                      style: TextStyle(fontSize: 15),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(248, 255, 206, 160));
                              });
                            },
                            child: const Text('+Cafetera italiana')),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(248, 255, 206, 160));
                              });
                            },
                            child: const Text('+Filtro papel')),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(248, 255, 206, 160));
                              });
                            },
                            child: const Text('+Espumador')),
                      ],
                    )
                  ])),
        ));
  }
}
