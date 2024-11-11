import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffee/pages/bottomnavigationbar.dart';
import 'package:homecoffee/pages/myhomepage.dart';
import 'package:homecoffee/pages/registrocuenta.dart';

class Iniciosesion extends StatefulWidget {
  const Iniciosesion({super.key});

  @override
  State<Iniciosesion> createState() => _IniciosesionState();
}

class _IniciosesionState extends State<Iniciosesion> {
  String logo = "assets/icons/3098737_coffee_machine2.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Inicio sesión')),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset(
              logo,
              semanticsLabel: 'Game app',
              width: 100,
            ),
            TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingresar correo electrónico',
            )),
            TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingresar contraseña',
            )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigationBarExample()));
                },
                child: const Text('Entrar')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Registrocuenta()));
                },
                child: const Text('Registrarse')),
          ],
        ),
      )),
    );
  }
}
