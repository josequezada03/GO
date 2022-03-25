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
  List<String> items = <String>[
    'Español',
    'English',
    'Frances',
  ];
  String dropdownValue = 'Español';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade800,
      body: Builder(
        builder: (context) => Center(
          child: Form(
            key: formkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      // margin: EdgeInsets.symmetric(horizontal: 110.0, vertical:110),
                      margin: EdgeInsets.fromLTRB(150, 30, 150, 0),
                      child: Image.asset(
                        'Orient.png',
                      )),
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
                      labelText: "Contraseña",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Favor de ingresar su contraseña';
                      } else if (value.length < 6) {
                        return 'Contraseña debe de tener mas de 6 caracteres';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "¿Olvidó su Contraseña?",
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
                      Future.delayed(Duration(seconds: 0), () {
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
                  const SizedBox(height: 20),
                  /*GestureDetector(
                    onTap: (() {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => Center(
                          child: AlertDialog(
                            title: Text('Cambiar lenguaje'),
                            actions: [
                              const SizedBox(height: 10),
                              ElevatedButton(
                                child: Text('English'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(10, 40),
                                    primary: Colors.cyan.shade700),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                child: Text('Español'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(50, 40),
                                    primary: Colors.cyan.shade700),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    child: Center(
                      child: Image.asset(
                        'traduc.png',
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),*/
                  Row(
                    children: [
                      DropdownButton<String>(
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        value: dropdownValue,
                        items: items.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
