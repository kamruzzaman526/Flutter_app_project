// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:food_order_app/components/my_textfield.dart';
// import 'package:sign_in_button/sign_in_button.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:google_sign_in/google_sign_in.dart';
// import 'reg_button.dart';

// // import 'components/my_textfield.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({Key? key, required void Function() onTap}) : super(key: key);

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   //text editing controllers
//   final emailController = TextEditingController();

//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();

//   void signUserUp() async {
//     // FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmail(
//     //     email: emailController.text,
//     //     password: passwordController.text,
//     //     context: context
//     //     );
//     try {
//       if (passwordController.text == confirmPasswordController.text) {
//         await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: emailController.text,
//           password: passwordController.text,
//         );
//       } else {
//         showErrorMessage("Password dont match");
//       }
//     } on FirebaseAuthException catch (e) {
//       Navigator.pop(context);
//       showErrorMessage(e.code);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               //logo

//               const Icon(
//                 Icons.lock,
//                 size: 10,
//               ),

//               SizedBox(height: 20),

//               // welcome back
//               Text(
//                 'Let\'s create an account for you',
//                 style: TextStyle(
//                   color: Colors.grey.shade700,
//                   fontSize: 16,
//                 ),
//               ),

//               SizedBox(height: 10),

//               //username textfield

//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 0.2),
//                 child: MyTextField(
//                   controller: emailController,
//                   hintText: 'Email',
//                   obscureText: false,
//                 ),
//               ),

//               SizedBox(height: 10),

//               MyTextField(
//                 controller: passwordController,
//                 hintText: 'Password',
//                 obscureText: true,
//               ),

//               SizedBox(height: 10),

//               MyTextField(
//                 controller: confirmPasswordController,
//                 hintText: 'Confirm Password',
//                 obscureText: true,
//               ),

//               SizedBox(height: 10),
//               //forgot passward
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       'Forgot Password?',
//                       style: TextStyle(
//                         color: Colors.grey.shade600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 30),

//               //sign in button

//               MyRegButton(
          
//                 onTap: signUserUp,
//               ),

//               // or continue with
//               SizedBox(height: 20),

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Divider(
//                         thickness: 0.5,
//                         color: Colors.black,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Text(
//                         'Or',
//                         style: TextStyle(color: Colors.grey.shade700),
//                       ),
//                     ),
//                     Expanded(
//                       child: Divider(
//                         thickness: 0.5,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               // google,facebook
//               SizedBox(height: 20),

//               SignInButton(
//                 Buttons.google,
//                 onPressed: () {},
//               ),

//               // not a member ? register
//               SizedBox(height: 40),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Already a member?',
//                     style: TextStyle(
//                       color: Colors.grey.shade700,
//                     ),
//                   ),
//                   SizedBox(width: 4),
//                   const Text(
//                     'Login Now',
                    
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }

//   void showErrorMessage(String code) {}
// }
