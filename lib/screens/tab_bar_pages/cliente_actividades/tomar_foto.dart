import 'package:flutter/material.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_actividades/foto_tomada.dart';

class TomarFoto extends StatefulWidget {
  const TomarFoto({Key? key}) : super(key: key);

  @override
  State<TomarFoto> createState() => _TomarFotoState();
}

class _TomarFotoState extends State<TomarFoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FotoTomada()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Image.asset(
            'stock_pic.PNG',
          )),
        ),
      ),
    );
  }
}
