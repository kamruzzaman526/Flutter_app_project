// import 'package:flutter/material.dart';
// import 'package:food_order_app/pages/scttt.dart';
// import 'package:get/get.dart';
// import 'package:qrcodescanner/home.dart';
// import 'package:qrcodescanner/screens/scanner/scanner.dart';

// class FoundScreen extends StatefulWidget {
//   final String value;
//   final Function() screenClose;
//   const FoundScreen({Key? key, required this.value, required this.screenClose})
//       : super(key: key);

//   @override
//   State<FoundScreen> createState() => _FoundScreenState();
// }

// class _FoundScreenState extends State<FoundScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Builder(
//           builder: (BuildContext context) {
//             return RotatedBox(
//               quarterTurns: 0,
//               child: IconButton(
//                 icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
//                 onPressed: () => Navigator.pop(context, false),
//               ),
//             );
//           },
//         ),
//         title: Text("Result",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
//         backgroundColor: Colors.pinkAccent,
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 "Result: ",
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(height: 20),

//               Text(widget.value, style: TextStyle(fontSize: 16)),

//               SizedBox(height: 50),

//               ElevatedButton(
//                 onPressed: () {
//                   Get.to(Scanner());
//                 },
//                 child: Text(
//                   'Scan Again',
//                 ),
//               ),

//               // ElevatedButton(
//               //   onPressed: () {
//               //     Get.to(Home());
//               //   },
//               //   child: Text(
//               //     'stop',
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
