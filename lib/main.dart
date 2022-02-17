import 'package:flutter/material.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/inicio.dart';
import 'package:gp_app/screens/homepage.dart';
import 'package:gp_app/screens/login_page.dart';
import 'package:gp_app/screens/prueba.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/mi_cuenta.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'GO app';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: LogIn(
          //key: UniqueKey(),
          //title: ('Titulo prueba'),
          ),
    );
  }
}
