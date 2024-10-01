import 'package:hive/hive.dart';
import 'package:loggy/loggy.dart';

import '../../../domain/entities/todo.dart';
import '../../../domain/entities/todo_hive.dart';

class TodoLocalDataSourceHive {
  addTodo(Todo todo) async {
    logInfo(
        "Adding todo to database with title: ${todo.title}  body: ${todo.body} completed: ${todo.completed}  type: ${todo.type}");
    TodoHive todoHive = TodoHive.fromTodo(todo: todo);
    // TODO ADD todoHive to the database
  }

  Future<List<Todo>> getAllTodos() async {
    // TODO get all todos from the database
    return Future.value([]);
  }

  deleteAll() async {
    //TODO delete all todos from the database
  }

  deleteTodo(index) async {
    // TODO delete todo from the database
  }

  updateTodo(Todo todo) async {
    logInfo(
        "Updating todo in database with title: ${todo.title}  body: ${todo.body} completed: ${todo.completed}  type: ${todo.type}");
    TodoHive todoHive = TodoHive.fromTodo(todo: todo);
    int id = todo.id!;
    // TODO update todo in the database
  }
}
