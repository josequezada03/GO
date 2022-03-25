import 'package:flutter/material.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_actividades/tomar_foto.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_seleccionado.dart';

class FotoTomada extends StatefulWidget {
  const FotoTomada({Key? key}) : super(key: key);

  @override
  State<FotoTomada> createState() => _FotoTomadaState();
}

class _FotoTomadaState extends State<FotoTomada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                'stock_example.jpeg',
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClienteSeleccionado()));
                      },
                      child: Text(
                        'Listo',
                        style: TextStyle(color: Colors.cyan.shade700),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TomarFoto()));
                      },
                      child: Text(
                        'Retomar',
                        style: TextStyle(color: Colors.cyan.shade700),
                      )),
                ],
              )
            ],
          ),
        ),
      ]),
    ));
  }
}
