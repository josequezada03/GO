import 'package:flutter/material.dart';
import 'package:gp_app/widget/add_todo_dialog.dart';

class Actividades extends StatefulWidget {
  const Actividades({Key? key}) : super(key: key);

  @override
  _ActividadesState createState() => _ActividadesState();
}

class _ActividadesState extends State<Actividades> {
  final variable1 = TextEditingController();
  final variable2 = TextEditingController();

  String var1 = '';
  String var2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Actividades',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan.shade700,
        child: const Icon(Icons.add),
        onPressed: () => showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            title: Text('Nombre de la Actividad'),
            content: Text('Descripcíon'),
            actions: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(border: InputBorder.none),
                  )),
              const SizedBox(height: 10),
              ElevatedButton(
                child: Text('Aceptar'),
                onPressed: () {
                  var1 = variable1.text;
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(95, 40), primary: Colors.cyan.shade700),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                child: Text('Cancelar'),
                onPressed: () {
                  var2 = variable2.text;
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 40), primary: Colors.cyan.shade700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
