import 'package:flutter/material.dart';

class Semillas extends StatefulWidget {
  const Semillas({Key? key}) : super(key: key);

  @override
  State<Semillas> createState() => _SemillasState();
}

class _SemillasState extends State<Semillas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semillas'),
        backgroundColor: Colors.cyan.shade700,
        centerTitle: true,
      ),
    );
  }
}
