import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gp_app/screens/tab_bar_pages/informacion_cliente.dart';
import 'package:gp_app/screens/tab_bar_pages/ver_mapa.dart';

import '../../widget/textfield_widget.dart';

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
        children: <Widget>[buildTop(), buildBottom()],
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
        TextFieldWidget(
          label: 'Nombre',
          text: 'Ruben Diaz',
          onChanged: (name) {},
        ),
        const SizedBox(height: 10),
        TextFieldWidget(
          label: 'Dirección',
          text: '6900 O Street, Suite 100 Lincoln, Ne 0000',
          onChanged: (email) {},
        ),
        const SizedBox(height: 10),
        Text(
          'Ver Mapa',
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
        const SizedBox(height: 10),
        Text(
          'Info',
          style: TextStyle(fontSize: 20),
        ),
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
        )
      ]),
    );
  }
}
