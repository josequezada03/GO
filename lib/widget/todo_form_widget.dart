import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {
  final String Titulo;
  final String Descripcion;
  final ValueChanged<String> onChangedTitulo;
  final ValueChanged<String> onChangedDescripcion;
  final VoidCallback onSavedTodo;

  const TodoFormWidget({
    Key? key,
    this.Titulo = '',
    this.Descripcion = '',
    required this.onChangedTitulo,
    required this.onChangedDescripcion,
    required this.onSavedTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildTitulo(),
            SizedBox(height: 8),
            buildDescripcion(),
            SizedBox(height: 32),
            buildButton(),
          ],
        ),
      );

  Widget buildTitulo() => TextFormField(
        maxLines: 1,
        initialValue: Titulo,
        onChanged: onChangedTitulo,
        validator: (Titulo) {
          if (Titulo!.isEmpty) {
            return 'El título no puede estar vacio';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Título',
        ),
      );

  Widget buildDescripcion() => TextFormField(
        maxLines: 3,
        initialValue: Descripcion,
        onChanged: onChangedDescripcion,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Descripción',
        ),
      );

  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.cyan.shade700),
          ),
          onPressed: onSavedTodo,
          child: Text('Guardado'),
        ),
      );
}
