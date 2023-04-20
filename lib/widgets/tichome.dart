// import 'package:flutter/material.dart';
// import 'tictactoe.dart';
// import 'builderlogic/buildgrid.dart';

// class TickHome extends StatelessWidget {
//   const TickHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Tic Tac Toe")),
//       body: Container(
//         color: Colors.grey.shade600,
//         height: 500,
//         width: 450,
//         child: Stack(
//           children: [
//             Positioned(
//               left: 0,
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.blueGrey,
//                     border: Border.all(width: 2)),
//                 height: 60,
//                 width: 120,
//                 child: Column(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.all(6),
//                       child: Text("Player1 Turn" + p1ex,
//                           style: TextStyle(
//                             fontWeight: (isP1turn)
//                                 ? FontWeight.bold
//                                 : FontWeight.normal,
//                             color: (isP1turn) ? Colors.yellow : Colors.white,
//                           )),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(6),
//                       child: Text("Player2 Turn" + p2ex,
//                           style: TextStyle(
//                             fontWeight: (isP1turn)
//                                 ? FontWeight.normal
//                                 : FontWeight.bold,
//                             color: (isP1turn) ? Colors.white : Colors.yellow,
//                           )),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Center(
//               child: Container(
//                 alignment: Alignment.center,
//                 width: 300,
//                 height: 300,
//                 decoration: BoxDecoration(
//                     color: Colors.black,
//                     border: Border.all(color: Colors.white)),
//                 child: GridView.builder(
//                   itemCount: 9,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                   ),
//                   itemBuilder: _buildGridItems,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Positioned(
//               bottom: 0,
//               left: 150,
//               child: ElevatedButton(
//                   style: const ButtonStyle(
//                       elevation: MaterialStatePropertyAll(8.0)),
//                   onPressed: _clearBoard,
//                   child: const Text("clear board")),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
