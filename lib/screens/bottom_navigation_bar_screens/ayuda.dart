import 'package:flutter/material.dart';

class Ayuda extends StatefulWidget {
  const Ayuda({Key? key}) : super(key: key);

  @override
  _AyudaState createState() => _AyudaState();
}

class _AyudaState extends State<Ayuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayuda'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
      ),
      body: Center(
        child: Text(
          'Ayuda',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
