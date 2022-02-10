import 'package:flutter/material.dart';

class Mensajeria extends StatefulWidget {
  const Mensajeria({Key? key}) : super(key: key);

  @override
  _MensajeriaState createState() => _MensajeriaState();
}

class _MensajeriaState extends State<Mensajeria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mensajeria'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Nuevo mensaje',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
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
