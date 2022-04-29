import 'package:flutter/material.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_actividades/orden_de_compra/productos/dulces.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_actividades/orden_de_compra/productos/jugos.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_actividades/orden_de_compra/productos/latas.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_actividades/orden_de_compra/productos/papas.dart';
import 'package:gp_app/screens/tab_bar_pages/cliente_actividades/orden_de_compra/productos/semillas.dart';

class OrdenDeCompra extends StatefulWidget {
  const OrdenDeCompra({Key? key}) : super(key: key);

  @override
  State<OrdenDeCompra> createState() => _OrdenDeCompraState();
}

class _OrdenDeCompraState extends State<OrdenDeCompra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear orden de compra'),
        backgroundColor: Colors.cyan.shade700,
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Buscar',
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 2),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dulces()),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Dulces',
                      style:
                          TextStyle(fontSize: 20, color: Colors.cyan.shade700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      '3 Variaciones',
                      style:
                          TextStyle(fontSize: 10, color: Colors.grey.shade800),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dulces()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  )
                ]),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Jugos()),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Jugos',
                      style:
                          TextStyle(fontSize: 20, color: Colors.cyan.shade700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      '2 Variaciones',
                      style:
                          TextStyle(fontSize: 10, color: Colors.grey.shade800),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Jugos()),
                        );
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  )
                ]),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Papas()),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Papas',
                      style:
                          TextStyle(fontSize: 20, color: Colors.cyan.shade700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      '2 Variaciones',
                      style:
                          TextStyle(fontSize: 10, color: Colors.grey.shade800),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Papas()),
                        );
                      },
                    ),
                  )
                ]),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Semillas()),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Semillas',
                      style:
                          TextStyle(fontSize: 20, color: Colors.cyan.shade700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      '2 Variaciones',
                      style:
                          TextStyle(fontSize: 10, color: Colors.grey.shade800),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Semillas()),
                        );
                      },
                    ),
                  )
                ]),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Latas()),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Latas',
                      style:
                          TextStyle(fontSize: 20, color: Colors.cyan.shade700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      '3 Variaciones',
                      style:
                          TextStyle(fontSize: 10, color: Colors.grey.shade800),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Latas()),
                        );
                      },
                    ),
                  )
                ]),
          ),
        ),
      ]),
    );
  }
}
