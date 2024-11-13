import 'package:flutter/material.dart';
import 'package:homecoffee/pages/home.dart';
import 'package:homecoffee/pages/mibarista.dart';
import 'package:homecoffee/pages/perfil.dart';
import 'package:homecoffee/pages/tuopinion.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 125,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(249, 232, 169, 122),
              ),
              child: Text(
                'HomeCoffee',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          ListTile(
            title: const Text('Home page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            title: const Text('Mi barista'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Mibarista()));
            },
          ),
          ListTile(
            title: const Text('Tu opinión'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Tuopinion()));
            },
          ),
          ListTile(
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Perfil()));
            },
          ),
        ],
      ),
    );
  }
}
