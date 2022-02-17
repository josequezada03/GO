import 'package:flutter/material.dart';
import 'package:gp_app/screens/homepage.dart';
import 'dart:async';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(' '),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
        elevation: 0,
      ),*/

      backgroundColor: Colors.grey.shade800,
      body: Builder(
        builder: (context) => Center(
          child: Form(
            key: formkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('oriente_trans.png'),
                  SizedBox(height: 35),
                  TextFormField(
                    style: TextStyle(
                        color: Colors.white, decorationColor: Colors.white),
                    decoration: InputDecoration(labelText: "Usuario"),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                              .hasMatch(value)) {
                        return "Favor de ingresar un correo válido";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    style: TextStyle(
                        color: Colors.white, decorationColor: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Contrazeña",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Favor de ingresar su contrazeña';
                      } else if (value.length < 6) {
                        return 'Contrazeña debe de tener mas de 6 caracteres';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "¿Olvido su Contrazeña?",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      if (!formkey.currentState!.validate()) {
                        return;
                      }
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Bienvenido"),
                        ),
                      );
                      Future.delayed(Duration(seconds: 3), () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homepage()));
                      });
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Ingresar'),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.cyan.shade700,
                      primary: Colors.white,
                      padding: EdgeInsets.all(1.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
