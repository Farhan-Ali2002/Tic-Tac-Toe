import 'package:flutter/material.dart';
import 'builderlogic/buildgrid.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({Key? key}) : super(key: key);

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  final p1 = 'x';
  final p2 = 'o';
  String p1ex = "<-";
  String p2ex = "";
  bool isP1turn = true;
  void _clearBoard() {
    grid = [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""]
    ];
    setState(() {});
  }

  void onTouchInk(int x, int y) {
    if (isP1turn) {
      if (grid[x][y] == "") {
        grid[x][y] = p1;

        isP1turn = false;
        setState(() {});
        if (didSomeoneWin(grid, p1, context)) {
          dialog(context, "player1win");
          _clearBoard();
        }
      }
    } else {
      if (grid[x][y] == "") {
        grid[x][y] = p2;
        isP1turn = true;
        setState(() {});
        if (didSomeoneWin(grid, p2, context)) {
          dialog(context, "player2win");
          _clearBoard();
        }
      }
    }
  }

  Widget _buildGridItems(BuildContext context, int index) {
    int gridStateLength = grid.length;
    int x, y = 0;
    x = (index / gridStateLength).floor();
    y = (index % gridStateLength);
    return InkWell(
        onTap: () => onTouchInk(x, y),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Center(
              child: Text(
            grid[x][y],
            style: const TextStyle(
                color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold),
          )),
        ));
  }

  List<List<String>> grid = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade600,
      height: 500,
      width: 450,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                  border: Border.all(width: 2)),
              height: 60,
              width: 120,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    child: Text("Player1 Turn" + p1ex,
                        style: TextStyle(
                          fontWeight:
                              (isP1turn) ? FontWeight.bold : FontWeight.normal,
                          color: (isP1turn) ? Colors.yellow : Colors.white,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    child: Text("Player2 Turn" + p2ex,
                        style: TextStyle(
                          fontWeight:
                              (isP1turn) ? FontWeight.normal : FontWeight.bold,
                          color: (isP1turn) ? Colors.white : Colors.yellow,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.black, border: Border.all(color: Colors.white)),
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: _buildGridItems,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Positioned(
            bottom: 0,
            left: 180,
            child: ElevatedButton(
                style: const ButtonStyle(),
                onPressed: _clearBoard,
                child: const Text("clear board")),
          )
        ],
      ),
    );
  }
}
