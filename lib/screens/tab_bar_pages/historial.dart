import 'package:flutter/material.dart';

class Historial extends StatefulWidget {
  const Historial({Key? key}) : super(key: key);

  @override
  _HistorialState createState() => _HistorialState();
}

class _HistorialState extends State<Historial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Historial',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
