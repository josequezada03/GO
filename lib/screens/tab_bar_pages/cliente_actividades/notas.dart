import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gp_app/model/todo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String input = '';
  List todo = [];
  @override
  void initState() {
    todo.add("Marcar a proveedores");
    todo.add("Agregar a Clientes");
    todo.add("Visitar Clientes");
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          centerTitle: true,
          title: Text(
            "Notas",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    title: Text("Nueva Nota"),
                    content: TextField(
                      decoration: InputDecoration(hintText: "Escriba su nota"),
                      onChanged: (String value) {
                        input = value;
                      },
                    ),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            setState(() {
                              todo.add(input);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Agregar",
                            style: TextStyle(color: Colors.cyan.shade700),
                          ))
                    ],
                  );
                });
          },
          backgroundColor: Colors.cyan.shade700,
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: EdgeInsets.all(5),
          child: ListView.builder(
              itemCount: todo.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                    key: Key(todo[index]),
                    child: Card(
                      elevation: 4,
                      margin: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: ListTile(
                        title: Text(
                          todo[index],
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.cyan.shade700,
                          ),
                          onPressed: () {
                            setState(() {
                              todo.removeAt(index);
                            });
                          },
                        ),
                      ),
                    ));
              }),
        ),
      ),
    );
  }
}
