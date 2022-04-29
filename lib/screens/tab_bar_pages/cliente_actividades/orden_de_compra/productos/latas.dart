import 'package:flutter/material.dart';

class Latas extends StatefulWidget {
  const Latas({Key? key}) : super(key: key);

  @override
  State<Latas> createState() => _LatasState();
}

class _LatasState extends State<Latas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latas'),
        backgroundColor: Colors.cyan.shade700,
        centerTitle: true,
      ),
    );
  }
}
