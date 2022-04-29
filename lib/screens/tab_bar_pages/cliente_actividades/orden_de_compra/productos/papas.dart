import 'package:flutter/material.dart';

class Papas extends StatefulWidget {
  const Papas({Key? key}) : super(key: key);

  @override
  State<Papas> createState() => _PapasState();
}

class _PapasState extends State<Papas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Papas'),
        backgroundColor: Colors.cyan.shade700,
        centerTitle: true,
      ),
    );
  }
}
