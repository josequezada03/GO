import 'dart:html';
import 'package:flutter/material.dart';
import 'package:gp_app/widget/add_todo_dialog.dart';
import 'cliente_nuevo.dart';

class Clientes extends StatefulWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  final aceptar = TextEditingController();
  final cancelar = TextEditingController();
  final List<String> listof = [
    "Antonio Nájera",
    "José Quezada",
    "Ruben Diaz",
    "Omar Bravo",
    "Antonio Nájera",
    "José Quezada",
    "Ruben Diaz",
    "Omar Bravo",
    "Antonio Nájera",
    "José Quezada",
    "Ruben Diaz",
    "Omar Bravo",
    "Antonio Nájera",
    "José Quezada",
    "Ruben Diaz",
    "Omar Bravo",
  ];

  String acpt = '';
  String cancl = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
          child: new ListView.builder(
        itemBuilder: (_, int index) => listDataItem(this.listof[index]),
        itemCount: this.listof.length,
      )),
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
  }
}

class listDataItem extends StatelessWidget {
  String itemName;
  listDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        child: new Row(
          children: <Widget>[
            new CircleAvatar(
              child: new Text(itemName[0]),
              backgroundColor: Colors.cyan.shade700,
            ),
            new Text(
              itemName,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
