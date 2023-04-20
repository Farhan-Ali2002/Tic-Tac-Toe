// import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           decoration: const BoxDecoration(
//             color: Colors.blue,
//             borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
//           ),
//           height: 200,
//           width: 200,
//           child: const Text('lets gooo'),
//         ),
//         const SizedBox(
//           // height: 20
//         ),
//         Center(
//           child: Container(
//             width: 200,
//             height: 70,
//             decoration: BoxDecoration(
//                 border: Border.all(width: 2, color: Colors.black),
//                 borderRadius: BorderRadius.circular(40)),
//             child: ButtonBar(
//               alignment: MainAxisAlignment.center,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     // showDialog(
//                     //     context: context,
//                     //     builder: (BuildContext context) {
//                     //       return AlertDialog(
//                     //         title: const Text("Problem!!!"),
//                     //         content: const Text("You are a big problem"),
//                     //         actions: [
//                     //           ElevatedButton(
//                     //               onPressed: () {}, child: const Text("Yes")),
//                     //           ElevatedButton(
//                     //               onPressed: () {}, child: const Text("No"))
//                     //         ],
//                     //       );
//                     //     });
//                     showBottomSheet<String>(
//                         enableDrag: true,
//                         context: context,
//                         builder: (BuildContext context) {
//                           return Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(100),
//                               color: Colors.blueAccent,
//                             ),
//                             height: 190,
//                             child: Center(
//                                 child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               child: const Text("bass"),
//                             )),
//                           );
//                         });
//                   },
//                   child: const Text("No"),
//                 ),
//                 TextButton(onPressed: () {}, child: const Text("YES")),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
