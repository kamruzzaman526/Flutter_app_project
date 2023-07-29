// import 'package:flutter/material.dart';
// import 'package:food_order_app/components/register_button.dart';
// import 'package:food_order_app/components/my_textfield.dart';
// import 'package:sign_in_button/sign_in_button.dart';



// class RegisterPage extends StatefulWidget {
//   const RegisterPage({ Key? key }) : super(key: key);

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final usernameController = TextEditingController();

//   final passwordController = TextEditingController();
//   void regiUserIn() {}
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               //logo
              
//               const Icon(
//                 Icons.lock,
//                 size: 100,
//               ),

//               SizedBox(height: 20),

//               // welcome back
//               Text(
//                 'Register Here',
//                 style: TextStyle(
//                   color: Colors.grey.shade700,
//                   fontSize: 16,
//                 ),
//               ),

//               SizedBox(height: 15),

//               //username textfield

//               MyTextField(
//                 controller: usernameController,
//                 hintText: 'Email',
//                 obscureText: false,
//               ),

//               SizedBox(height: 10),

//               MyTextField(
//                 controller: passwordController,
//                 hintText: 'Password',
//                 obscureText: true,
//               ),

//               SizedBox(height: 15),
//               //forgot passward
//               // Padding(
//               //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               //   child: Row(
//               //     mainAxisAlignment: MainAxisAlignment.end,
//               //     children: [
//               //       Text(
//               //         'Forgot Password?',
//               //         style: TextStyle(
//               //           color: Colors.grey.shade600,
//               //         ),
//               //       ),
//               //     ],
//               //   ),
//               // ),
//               SizedBox(height: 30),

//               //sign in button

//               // RegisterButton(
//               //   onTap: regiUserIn,
//               // ),
//               Container(
//         padding: const EdgeInsets.all(20),
//         margin: const EdgeInsets.symmetric(horizontal: 25),
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: const Center(
//           child: Text(
//             'Register',
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
            
//           ),
//         ),
//       ),

//               // or continue with
//               SizedBox(height: 20),

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Row(
//                   children: [
//                     Divider(
//                       thickness: 0.5,
//                       color: Colors.black,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Text(
//                         'Or',
//                         style: TextStyle(color: Colors.grey.shade700),
//                       ),
//                     ),
//                     Divider(
//                       thickness: 0.5,
//                       color: Colors.black,
//                     ),
//                   ],
//                 ),
//               ),

//               // google,facebook
//               SizedBox(height: 20),

//               SignInButton(
//                 Buttons.google,
//                 text: "Register in with Google",
//                 onPressed: () {},
//                 ),

                
  

//               // not a member ? register
//               SizedBox(height: 40),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Already member?',
//                     style: TextStyle(
//                       color: Colors.grey.shade700,
//                     ),
//                   ),
//                   SizedBox(width: 4),
//                   const 
//                   Text(
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
// }