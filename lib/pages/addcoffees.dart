import 'package:flutter/material.dart';
import 'package:homecoffee/pages/coffepreparationcard.dart';
import 'package:homecoffee/pages/perfil.dart';
import 'package:homecoffee/models/person.dart';

class AddCoffees extends StatefulWidget {
  const AddCoffees({super.key});

  @override
  State<AddCoffees> createState() => _AddCoffeesState();
}

class _AddCoffeesState extends State<AddCoffees> {
  Person cliente = new Person();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Creación nueva receta'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Nombre receta:',
                  style: TextStyle(fontSize: 15),
                ),
                TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresar nombre',
                )),
                Text(
                  'Ingredientes',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('+Leche')),
                    ElevatedButton(onPressed: () {}, child: Text('+Crema')),
                    ElevatedButton(onPressed: () {}, child: Text('+Café')),
                    ElevatedButton(onPressed: () {}, child: Text('+Azúcar')),
                  ],
                ),
                Text(
                  'Herramientas',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('+Cafetera\nitaliana',
                            style: TextStyle(fontSize: 10))),
                    ElevatedButton(
                        onPressed: () {}, child: Text('+Filtro papel')),
                    ElevatedButton(onPressed: () {}, child: Text('+Espumador')),
                  ],
                ),
                Text(
                  'Preparación:',
                  style: TextStyle(fontSize: 15),
                ),
                TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Describir preparación',
                )),
                Text(
                  'Tiempo preparación:',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Icon(Icons.remove)),
                    Text(
                      '00:00:00',
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Crear receta')),
              ],
            )),
      ),
    );
  }
}
