import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gp_app/model/user.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/editar_mi_cuenta.dart';
import 'package:gp_app/screens/login_page.dart';
import 'package:gp_app/utils/user_preferences.dart';
import 'package:gp_app/widget/appbar_widget.dart';
import 'package:gp_app/widget/profile_widget.dart';

class MiCuenta extends StatefulWidget {
  const MiCuenta({Key? key}) : super(key: key);

  @override
  _MiCuentaState createState() => _MiCuentaState();
}

class _MiCuentaState extends State<MiCuenta> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
        title: Text('Mi cuenta'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 25,
          ),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditarMiCuenta()),
              );
            },
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(
            height: 60,
          ),
          buildAbout(user),
          const SizedBox(
            height: 10,
          ),
          buildLogOffButton(context),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Información',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}

Widget buildLogOffButton(BuildContext context) => Container(
      padding: EdgeInsets.fromLTRB(180, 10, 180, 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 40), primary: Colors.cyan.shade700),
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              title: Text('Cerrar Sesión '),
              content: Text('¿Estas seguro que deseas cerrar la sesión?'),
              actions: [
                const SizedBox(height: 10),
                ElevatedButton(
                  child: Text('Si'),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LogIn()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(95, 40), primary: Colors.cyan.shade700),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: Text('No'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(50, 40), primary: Colors.cyan.shade700),
                ),
              ],
            ),
          );
        },
        child: Text('Cerrar sesión'),
      ),
    );
