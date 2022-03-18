import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ayuda extends StatefulWidget {
  const Ayuda({Key? key}) : super(key: key);

  @override
  _AyudaState createState() => _AyudaState();
}

class _AyudaState extends State<Ayuda> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;

  onChangeFunction1(bool newValue1) {
    setState(
      () {
        valNotify1 = newValue1;
      },
    );
  }

  onChangeFunction2(bool newValue2) {
    setState(
      () {
        valNotify1 = newValue2;
      },
    );
  }

  onChangeFunction3(bool newValue3) {
    setState(
      () {
        valNotify1 = newValue3;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayuda'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.person, color: Colors.cyan.shade700),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Pruebas',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.cyan.shade700,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOption(context, "Cambiar contraseña"),
            buildAccountOption(context, "Configuración"),
            buildAccountOption(context, "Social"),
            buildAccountOption(context, "Lenguaje"),
            buildAccountOption(context, "Privacidad y Seguridad"),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(Icons.volume_up_outlined, color: Colors.cyan.shade700),
                SizedBox(width: 10),
                Text(
                  "Notificaciónes",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.cyan.shade700,
            ),
            SizedBox(height: 10),
            buildNotificationOption(
                "Dark Theme", valNotify1, onChangeFunction1),
            buildNotificationOption(
                "Cuenta Activa", valNotify2, onChangeFunction2),
            buildNotificationOption("Mas", valNotify3, onChangeFunction3),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(Icons.video_collection, color: Colors.cyan.shade700),
                SizedBox(width: 10),
                Text(
                  "Videos Tutoriales",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.cyan.shade700,
            ),
            SizedBox(height: 50),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: Text(
                  "Salir",
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 2.2,
                      color: Colors.cyan.shade700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.cyan.shade700),
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.lightGreen.shade400,
              trackColor: Colors.cyan.shade700,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cerrar"))
                ],
              );
            });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.cyan.shade700,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.cyan.shade700,
            ),
          ],
        ),
      ),
    );
  }
}
