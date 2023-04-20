import 'package:flutter/material.dart';
import 'package:practice_book/widgets/tictactoe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: const Color.fromARGB(255, 4, 42, 73)),
        home: const SafeArea(child: TicTacToe()));
  }
}
