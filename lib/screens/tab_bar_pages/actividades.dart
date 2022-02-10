import 'package:flutter/material.dart';

class Actividades extends StatefulWidget {
  const Actividades({Key? key}) : super(key: key);

  @override
  _ActividadesState createState() => _ActividadesState();
}

class _ActividadesState extends State<Actividades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Actividades',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyan.shade700,
        child: const Icon(Icons.edit),
      ),
    );
  }
}
