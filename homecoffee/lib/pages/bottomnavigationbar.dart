import 'package:flutter/material.dart';
import 'package:homecoffee/pages/favcoffees.dart';
import 'package:homecoffee/pages/home.dart';
import 'package:homecoffee/pages/perfil.dart';
import 'package:homecoffee/pages/products.dart';
import 'package:homecoffee/pages/searchbar.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  String perfilUser = "assets/icons/9035990_person_circle_sharp_icon.svg";

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.normal);

  static const List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const FavoriteCoffees(),
    const Products(),
    const Perfil()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
        //child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(248, 255, 206, 160),
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        elevation: 20,
        unselectedItemColor: Color.fromARGB(248, 33, 33, 33),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'MyFavCoffee',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee_maker),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 153, 67, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
