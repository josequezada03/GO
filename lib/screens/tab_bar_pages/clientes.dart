import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Clientes',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyan.shade700,
        child: const Icon(Icons.group_add),
      ),
    );
  }
}
