import 'package:flutter/material.dart';
import 'package:gp_app/screens/tab_bar_pages/actividades.dart';
import 'package:gp_app/screens/tab_bar_pages/clientes.dart';
import 'package:gp_app/screens/tab_bar_pages/historial.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Inicio'),
            centerTitle: true,
            backgroundColor: Colors.grey.shade800,
            bottom: TabBar(
              tabs: [
                Tab(text: 'Actividades'),
                Tab(text: 'Clientes'),
                Tab(text: 'Historial'),
              ],
              labelColor: Colors.lightGreen.shade400,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.lightGreen.shade400,
            ),
          ),
          body: TabBarView(
            children: [
              Actividades(),
              Clientes(),
              Historial(),
            ],
          ),
        ),
      );
}
