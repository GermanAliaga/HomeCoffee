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
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(249, 232, 169, 122),
            ),
            child: Text(
              'HomeCoffee',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home page'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_cafe),
            title: const Text('Mi barista'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/mibarista');
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text('Tu opinión'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/tuopinion');
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/perfil');
            },
          ),
        ],
      ),
    );
  }
}
