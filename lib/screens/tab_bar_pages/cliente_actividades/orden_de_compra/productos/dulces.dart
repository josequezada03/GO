import 'package:flutter/material.dart';

class Dulces extends StatefulWidget {
  const Dulces({Key? key}) : super(key: key);

  @override
  State<Dulces> createState() => _DulcesState();
}

class _DulcesState extends State<Dulces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dulces'),
        backgroundColor: Colors.cyan.shade700,
        centerTitle: true,
      ),
    );
  }
}
