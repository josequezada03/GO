import 'package:flutter/material.dart';

class VerMapa extends StatefulWidget {
  const VerMapa({Key? key}) : super(key: key);

  @override
  State<VerMapa> createState() => _VerMapaState();
}

class _VerMapaState extends State<VerMapa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan),
      body: Text('Hola'),
    );
  }
}
