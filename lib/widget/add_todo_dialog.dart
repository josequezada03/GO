import 'package:flutter/material.dart';

class AddTodoDialogWidget extends StatefulWidget {
  const AddTodoDialogWidget({Key? key}) : super(key: key);

  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String Titulo = '';
  String Descripcion = '';

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Agregar Tarea',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            )
          ],
        ),
      );
}
