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
          Future.delayed(const Duration(seconds: 1), () {
            dialog(context, "player1win");
            _clearBoard();
          });
        }
      }
    } else {
      if (grid[x][y] == "") {
        grid[x][y] = p2;
        isP1turn = true;
        setState(() {});
        if (didSomeoneWin(grid, p2, context)) {
          Future.delayed(const Duration(seconds: 1), () {
            dialog(context, "player2win");
            _clearBoard();
          });
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
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 14, 117, 143), width: 3)),
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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 42, 73),
      appBar: AppBar(
        title: const Text("Tic Tac Toe"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 14, 72, 121),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 210,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 108, 19, 124),
                            width: 2.4)),
                    padding: const EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Text("Player1",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: (isP1turn)
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: (isP1turn) ? Colors.yellow : Colors.white,
                            )),
                        const Text(
                          'x',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 108, 19, 124),
                            width: 2.4)),
                    padding: const EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Text("Player2",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: (isP1turn)
                                  ? FontWeight.normal
                                  : FontWeight.bold,
                              color: (isP1turn) ? Colors.white : Colors.yellow,
                            )),
                        const Text(
                          'o',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                        color: const Color.fromARGB(255, 14, 117, 143),
                        width: 4)),
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
              left: 150,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(8.0)),
                  onPressed: _clearBoard,
                  child: const Text("clear board")),
            )
          ],
        ),
      ),
    );
  }
}
