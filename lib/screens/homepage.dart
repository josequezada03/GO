import 'package:flutter/material.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/ayuda.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/editar_mi_cuenta.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/mensajeria.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/mi_cuenta.dart';
import 'package:gp_app/utils/user_preferences.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final user = UserPreferences.myUser;

  int currentIndex = 0;
  final screens = [
    MiCuenta(),
    Mensajeria(),
    Ayuda(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.grey.shade800,
      //  title: const Text('Nombre de la app'),
      // centerTitle: true,
      // titleTextStyle: TextStyle(
      //      fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
      //),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan.shade600,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Mi cuenta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Mensajeria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Ayuda',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
