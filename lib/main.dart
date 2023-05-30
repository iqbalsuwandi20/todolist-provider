import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_provider/providers/todo_list_provider.dart';
import 'package:todolist_provider/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodoListProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Todo List Provider",
        home: HomeScreen(),
      ),
    );
  }
}
