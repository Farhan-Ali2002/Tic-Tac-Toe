import 'package:flutter/material.dart';
import 'package:practice_book/widgets/tichome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(primaryColor: Colors.blueGrey),
      home: const SafeArea(
        child: Scaffold(
          body: TickHome(),
        ),
      ),
    );
  }
}
