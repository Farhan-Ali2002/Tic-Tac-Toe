import 'package:flutter/material.dart';

class TicTiles extends StatefulWidget {
  TicTiles({Key? key, required this.id}) : super(key: key);
  int id = 0;
  @override
  State<TicTiles> createState() => _TicTilesState();
}

class _TicTilesState extends State<TicTiles> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 14, 117, 143), width: 4)),
      child: const Text('yooo'),
    ));
  }
}
