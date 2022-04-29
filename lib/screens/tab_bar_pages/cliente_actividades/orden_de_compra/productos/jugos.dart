import 'package:flutter/material.dart';

class Jugos extends StatefulWidget {
  const Jugos({Key? key}) : super(key: key);

  @override
  State<Jugos> createState() => _JugosState();
}

class _JugosState extends State<Jugos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jugos'),
        backgroundColor: Colors.cyan.shade700,
        centerTitle: true,
      ),
    );
  }
}
