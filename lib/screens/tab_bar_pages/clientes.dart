import 'dart:html';
import 'package:flutter/material.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_seleccionado.dart';
import 'package:gp_app/widget/add_todo_dialog.dart';
import 'cliente_nuevo.dart';

class Clientes extends StatefulWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  List<String> items = [
    "Ruben Diaz",
    "Bob Smith",
    "Matilda Ochoa",
    "Ignacio de la Hoya",
    "Jason Tyler",
    "Yenina Ernestina",
    "Aitana Jimena",
    "Oscar Lujan",
    "Megan Perales",
    "Leandro Aragon",
    "Demetrio Córdoba",
    "Javier Toribio",
    "Benito Albino",
    "Omar Bravo",
    "Leopoldo Fernando Javier Castañeda de la Rosa Martinez Jr.",
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: buildList(),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.cyan.shade700,
            child: const Icon(Icons.group_add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ClienteNuevo()),
              );
            }),
      );

  Widget buildList() => ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage('blankProfile.webp'),
            ),
            title: Text(item),
            subtitle: Text('Dirección $index'),
            onTap: () => selectItem(item),
          );
        },
      );
  void selectItem(String item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ClienteSeleccionado(),
      ),
    );
  }
}



/*
floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan.shade700,
          child: const Icon(Icons.group_add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ClienteNuevo()),
            );
          }),
    
*/