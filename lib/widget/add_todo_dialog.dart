import 'package:flutter/material.dart';
import 'package:gp_app/screens/provider/todos.dart';
import 'package:gp_app/widget/todo_form_widget.dart';
import 'package:provider/provider.dart';

import '../model/todo.dart';

class AddTodoDialogWidget extends StatefulWidget {
  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String Titulo = '';
  String Descripcion = '';

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Agregar Actividad',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 8),
              TodoFormWidget(
                onChangedTitulo: (Titulo) =>
                    setState(() => this.Titulo = Titulo),
                onChangedDescripcion: (Descripcion) =>
                    setState(() => this.Descripcion = Descripcion),
                onSavedTodo: addTodo,
              ),
            ],
          ),
        ),
      );
  void addTodo() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    } else {
      final todo = Todo(
        id: DateTime.now().toString(),
        Titulo: Titulo,
        Descripcion: Descripcion,
        createdTime: DateTime.now(),
      );

      final provider = Provider.of<TodosProvider>(context, listen: false);
      provider.addTodo(todo);
      Navigator.of(context).pop();
    }
  }
}
