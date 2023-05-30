import 'package:flutter/material.dart';
import 'package:todolist_provider/models/todo_model.dart';

class TodoListProvider with ChangeNotifier {
  List<TodoModel> _todoList = [];

  List<TodoModel> get todoList => _todoList;
}