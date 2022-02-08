import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Fondo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      //appBar: buildAppBar(context),
    );
  }
}
