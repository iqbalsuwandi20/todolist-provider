import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_provider/providers/todo_list_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Todo List Provider"),
      ),
      body: Consumer<TodoListProvider>(builder: (
          context,
          todoProvider,
          child,
          ) {
        return ListView(
          padding: const EdgeInsets.all(20.0),
          children: todoProvider.todoList.isNotEmpty
          ? [] : [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 100.0,
              child: const Center(
                child: Text(
                  "Todo list masih kosong!",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
