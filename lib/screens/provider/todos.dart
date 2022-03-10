import 'package:flutter/widgets.dart';

import '../../model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      Titulo: 'Entrega Dulcería',
      Descripcion: '''- ZumbaPica
- Miguelito
- Chamoy
- Gomitas''',
      id: '',
    ),
    Todo(
      createdTime: DateTime.now(),
      Titulo: 'Entrega paletas',
      Descripcion: '''- Tix Tix
- Corazón
- Payaso''',
      id: '',
    ),
    Todo(
      createdTime: DateTime.now(),
      Titulo: 'Viaje a centros comerciales',
      id: '',
    ),
    Todo(
      createdTime: DateTime.now(),
      Titulo: 'Servicio de Paquetería',
      id: '',
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
  List<Todo> get todosCompleted =>
      _todos.where((todo) => todo.isDone == true).toList();

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);

    notifyListeners();
  }

  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();

    return todo.isDone;
  }

  void updateTodo(Todo todo, String Titulo, String Descripcion) {
    todo.Titulo = Titulo;
    todo.Descripcion = Descripcion;

    notifyListeners();
  }
}
