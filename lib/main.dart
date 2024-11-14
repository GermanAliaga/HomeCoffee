import 'package:flutter/material.dart';
import 'package:homecoffee/models/comentario.dart';
import 'package:homecoffee/models/barista.dart';
import 'package:homecoffee/models/person.dart';
import 'package:homecoffee/models/producto.dart';
import 'package:homecoffee/models/receta.dart';
import 'package:homecoffee/models/sistema.dart';
import 'package:homecoffee/pages/splashscreen.dart';
import 'package:homecoffee/pages/home.dart';
import 'package:homecoffee/pages/mibarista.dart';
import 'package:homecoffee/pages/tuopinion.dart';
import 'package:homecoffee/pages/perfil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Sistema()),
        ChangeNotifierProvider(create: (_) => Comentario()),
        ChangeNotifierProvider(create: (_) => Person()),
        ChangeNotifierProvider(create: (_) => Producto()),
        ChangeNotifierProvider(create: (_) => Receta()),
        ChangeNotifierProvider(create: (_) => Barista()),
      ],
      child: MaterialApp(
        title: 'HomeCoffee',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(249, 232, 169, 122),
          ),
          brightness: Brightness.light,
          useMaterial3: true,
          fontFamily: 'Caramel',
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => const Splashscreen(),
          '/home': (context) => const HomePage(),
          '/mibarista': (context) => const Mibarista(),
          '/tuopinion': (context) => const Tuopinion(),
          '/perfil': (context) => const Perfil(),
        },
      ),
    );
  }
}
