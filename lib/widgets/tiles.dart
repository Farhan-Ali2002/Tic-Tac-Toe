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
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: const Text('yooo'),
    ));
  }
}
