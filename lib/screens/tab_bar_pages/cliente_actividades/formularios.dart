import 'package:flutter/material.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_seleccionado.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
        centerTitle: true,
        backgroundColor: Colors.cyan.shade700,
      ),
      body: ListView(children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Text(
              'Were you welcomed at the store?',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Divider(
          indent: 25,
          endIndent: 25,
          height: 1,
          thickness: 1,
          color: Colors.cyan.shade700,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.cyan.shade700)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Yes'),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.cyan.shade700)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('No'),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          height: 1,
          thickness: 2,
          color: Colors.cyan.shade700,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Text(
              'Was the stock empty?',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Divider(
          indent: 25,
          endIndent: 25,
          height: 1,
          thickness: 1,
          color: Colors.cyan.shade700,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.cyan.shade700)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Yes'),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.cyan.shade700)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('No'),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          height: 1,
          thickness: 2,
          color: Colors.cyan.shade700,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Text(
              'Was the aisle clean?',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Divider(
          indent: 25,
          endIndent: 25,
          height: 1,
          thickness: 1,
          color: Colors.cyan.shade700,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.cyan.shade700)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Yes'),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.cyan.shade700)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('No'),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          height: 1,
          thickness: 2,
          color: Colors.cyan.shade700,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Text(
              'Did you fully stock the shelf?',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Divider(
          indent: 25,
          endIndent: 25,
          height: 1,
          thickness: 1,
          color: Colors.cyan.shade700,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.cyan.shade700)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Yes'),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.cyan.shade700)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('No'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(50),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.cyan.shade700),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Enviar'),
          ),
        )
      ]),
    );
  }
}
