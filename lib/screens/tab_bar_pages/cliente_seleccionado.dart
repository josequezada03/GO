import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/inicio.dart';
import 'package:gp_app/screens/homepage.dart';
import 'package:gp_app/screens/tab_bar_pages/informacion_cliente.dart';
import 'package:gp_app/screens/tab_bar_pages/ver_mapa.dart';

import '../../widget/textfield_widget.dart';
import 'cliente_actividades/tomar_foto.dart';
import 'clientes.dart';

class ClienteSeleccionado extends StatefulWidget {
  const ClienteSeleccionado({Key? key}) : super(key: key);

  @override
  State<ClienteSeleccionado> createState() => _ClienteSeleccionadoState();
}

class _ClienteSeleccionadoState extends State<ClienteSeleccionado> {
  final double coverHeight = 220;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ruben Diaz'),
        backgroundColor: Colors.cyan.shade700,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.timer_outlined),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          buildTop(),
          buildBottom(),
          Row(
            children: [
              SizedBox(width: 20),
              Text('Nombre:', style: TextStyle(color: Colors.cyan.shade700)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(width: 20),
              Text('Ruben Diaz', style: TextStyle(fontSize: 20)),
              IconButton(
                color: Colors.cyan.shade700,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => InformacioCliente(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.info_outline_rounded,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Text('Dirección', style: TextStyle(color: Colors.cyan.shade700)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(width: 20),
              Text(
                '277 Bedford Ave, Broklyn, NY 11211, USA',
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                color: Colors.cyan.shade700,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => VerMapa()));
                },
                icon: Icon(
                  Icons.location_on,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            height: 20,
            thickness: 2,
            color: Colors.cyan.shade700,
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(width: 20),
                RotatedBox(
                  quarterTurns: 3,
                  child: IconButton(
                    color: Colors.cyan.shade700,
                    onPressed: () {},
                    icon: Icon(
                      Icons.note,
                    ),
                  ),
                ),
                Text('Notas'),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(width: 20),
                RotatedBox(
                  quarterTurns: 0,
                  child: IconButton(
                    color: Colors.cyan.shade700,
                    onPressed: () {},
                    icon: Icon(
                      Icons.notes,
                    ),
                  ),
                ),
                Text('Formularios'),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(width: 20),
                RotatedBox(
                  quarterTurns: 0,
                  child: IconButton(
                    color: Colors.cyan.shade700,
                    onPressed: () {},
                    icon: Icon(Icons.download_done_sharp),
                  ),
                ),
                Text('Historial'),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TomarFoto()),
              );
            },
            child: Row(
              children: [
                SizedBox(width: 20),
                RotatedBox(
                  quarterTurns: 0,
                  child: IconButton(
                    color: Colors.cyan.shade700,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TomarFoto()),
                      );
                    },
                    icon: Icon(Icons.photo_camera),
                  ),
                ),
                Text('Tomar foto'),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                'Órdenes de compra',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(width: 20),
                RotatedBox(
                  quarterTurns: 0,
                  child: IconButton(
                    color: Colors.cyan.shade700,
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart),
                  ),
                ),
                Text('Órden de compra'),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = coverHeight - profileHeight / 1;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'zumba.png',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.cyan.shade700,
        child: CircleAvatar(
          backgroundImage: AssetImage('user4.jpg'),
          radius: 68,
        ),
      );

  Widget buildBottom() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(children: [
        const SizedBox(height: 10),
      ]),
    );
  }
}
