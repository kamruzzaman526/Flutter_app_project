
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'home_page.dart';
// import 'login_or_register_page.dart';

// class AuthPage extends StatefulWidget {
//   const AuthPage({Key? key}) : super(key: key);

//   @override
//   State<AuthPage> createState() => _AuthPageState();
// }

// class _AuthPageState extends State<AuthPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           //user is loged in
//           if (snapshot.hasData) {
//             return HomePage();
//             // User is not loged in
//           } else {
//             return LoginOrRegisterPage();
//           }
//         },
//       ),
//     );
//   }
// }

// // body: StreamBuilder<User?>(
// //   stream: FirebaseAuth.instance.authStateChanges(),
// //   builder: (context, snapshot) {
// //     //
// //     if (snapshot.hasData) {
// //       return HomePage();
// //     }

// //      else {
// //       LoginPage();
// //     }
// //   },
// // ),
