import 'package:flutter/material.dart';
import 'tictactoe.dart';

class TickHome extends StatelessWidget {
  const TickHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          "TIC TAC TOE",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Center(child: TicTacToe())
      ],
    );
  }
}
