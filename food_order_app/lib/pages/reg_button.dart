// import 'package:flutter/material.dart';
// // import 'pages/login_page';


// class MyRegButton extends StatefulWidget {
//   const MyRegButton({Key? key,required this.onTap,}) : super(key: key,);
//   final Function()? onTap;

//   @override
//   State<MyRegButton> createState() => _MyRegButtonState();
// }

// class _MyRegButtonState extends State<MyRegButton> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widget.onTap,
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         margin: const EdgeInsets.symmetric(horizontal: 25),
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Center(
//           child: Text(
//             'Sign In',
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }