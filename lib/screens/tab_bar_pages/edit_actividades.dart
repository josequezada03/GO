import 'package:flutter/material.dart';
import 'package:gp_app/screens/provider/todos.dart';
import 'package:gp_app/widget/todo_form_widget.dart';
import 'package:gp_app/model/todo.dart';
import 'package:gp_app/widget/todo_widget.dart';
import 'package:provider/provider.dart';

class EditTodoPage extends StatefulWidget {
  final Todo todo;

  const EditTodoPage({Key? key, required this.todo}) : super(key: key);

  @override
  _EditTodoPageState createState() => _EditTodoPageState();
}

class _EditTodoPageState extends State<EditTodoPage> {
  final _formkey = GlobalKey<FormState>();

  late String Titulo;
  late String Descripcion;

  @override
  void initState() {
    super.initState();

    Titulo = widget.todo.Titulo;
    Descripcion = widget.todo.Descripcion;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade700,
          title: Text('Editar Actividad'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                final provider =
                    Provider.of<TodosProvider>(context, listen: false);
                provider.removeTodo(widget.todo);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formkey,
            child: TodoFormWidget(
              Titulo: Titulo,
              Descripcion: Descripcion,
              onChangedTitulo: (Titulo) => setState(() => this.Titulo = Titulo),
              onChangedDescripcion: (Titulo) =>
                  setState(() => this.Descripcion = Descripcion),
              onSavedTodo: saveTodo,
            ),
          ),
        ),
      );
  void saveTodo() {
    final isValid = _formkey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      final provider = Provider.of<TodosProvider>(context, listen: false);

      provider.updateTodo(widget.todo, Titulo, Descripcion);
      Navigator.of(context).pop();
    }
  }
}
