import 'package:flutter/cupertino.dart';

class TodoField {
  static const createdTime = 'Creado';
}

class Todo {
  DateTime createdTime;
  String Titulo;
  String id;
  String Descripcion;
  bool isDone;

  Todo({
    required this.createdTime,
    required this.Titulo,
    this.Descripcion = '',
    required this.id,
    this.isDone = false,
  });
}
