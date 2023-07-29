// import 'package:flutter/material.dart';

// class RegisterButton extends StatefulWidget {

//   final Function()? onTap;
//   final controller;
//   final text;

//   const RegisterButton({
//      Key? key,

//      required this.onTap,
//      required this.controller,
//      required this.text,

//    }) : super(key: key);

//   @override
//   State<RegisterButton> createState() => _RegisterButtonState();
// }

// class _RegisterButtonState extends State<RegisterButton> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widget.onTap,
//       child: Container(
//         padding: const EdgeInsets.all(15),
//         margin: const EdgeInsets.symmetric(horizontal: 25),
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: const Center(
//           child: Text(
//             'Sign in',
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