import 'package:flutter/material.dart';
import 'package:gp_app/widget/add_todo_dialog.dart';
import 'package:gp_app/widget/todo_list_widget.dart';

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
      body: TodoListWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan.shade700,
        child: const Icon(Icons.add),
        onPressed: () => showDialog(
          builder: (BuildContext context) => AddTodoDialogWidget(),
          context: context,
          barrierDismissible: false,
        ),
      ),
    );
  }
}
