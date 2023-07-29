// ignore_for_file: avoid_print

// import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/admin/admin_home.dart';
import 'package:food_order_app/forget_password_page.dart';
import 'package:food_order_app/pages/home_page.dart';
import 'package:food_order_app/pages/home_screen.dart';
import 'package:food_order_app/services/firebase_auth_methods.dart';
import 'package:food_order_app/utils/showSnackBar.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';

import 'home_sup.dart';

class SignIN extends StatefulWidget {
  // const HomeScreen({super.key});

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink.shade300,
      // appBar: AppBar(
      //   title: Center(child: Text('Sign In')),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(children: [
                SizedBox(height: 50),

                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Color(0xff12375c),
                ),
                SizedBox(height: 50),
                Text(
                  'Welcome Back, Admin',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,

                  ),
                ),

                SizedBox(height: 15),


                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    
                    controller: loginEmailController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      hintText: 'Email',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: loginpasswordController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      hintText: 'Password ( Minimum 6 Digits )',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                //forgot passward
                GestureDetector(
                  onTap: () {
                    Get.to(ForgetPassword());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: () async {
                //     var loginEmail = loginEmailController.text.trim();
                //     var loginPassword = loginpasswordController.text.trim();

                //     try {
                //       final User? firebaseUser = (await FirebaseAuth.instance
                //               .signInWithEmailAndPassword(
                //                   email: loginEmail, password: loginPassword))
                //           .user;
                //       if (firebaseUser != null) {
                //         Get.to(HomePage());
                //         print("Loged in");
                //       } else {
                //         print("Check email and password");
                //       }
                //     } on FirebaseAuthException catch (e) {
                //       print("Error $e");
                //     }
                //   },
                //   child: Text('login'),
                // ),

                GestureDetector(
                  onTap: () async {
                     showDialog(

                      context: context,
                      builder: (context) {
                      return Center(child: CircularProgressIndicator());
                     },
                     );

                    var loginEmail = loginEmailController.text.trim();
                    var loginPassword = loginpasswordController.text.trim();

                    try {
                      final User? firebaseUser = (await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: loginEmail, password: loginPassword))
                          .user;
                      if (firebaseUser != null) {
                        Get.to(() => AdminHome());
                        print("Loged in");
                      } else {
                        print("Check email and password");
                      }
                    } on FirebaseAuthException catch (e) {
                      // print("Error $e");
                      showSnackBar(context, e.message!);
                    }
                    Navigator.of(context).pop();

                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Color(0xff12375c),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),

                // Container(
                //   child: Card(
                //     child: Padding(
                //       padding: EdgeInsets.all(10),
                //       child: Text("forget password"),
                //     ),
                //   ),
                // ),
                // SizedBox(height: 15),
                // GestureDetector(
                //   onTap: () {
                //     Get.to(SignUp());
                //   },
                //   child: Container(
                //     child: Card(
                //       child: Padding(
                //         padding: EdgeInsets.all(10),
                //         child: Text("Not a member ?sign up"),
                //       ),
                //     ),
                //   ),
                // ),

                // or continue with
                SizedBox(height: 20),

                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25),
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: Divider(
                //           thickness: 0.5,
                //           color: Colors.black,
                //         ),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 10),
                //         child: Text(
                //           'Or',
                //           style: TextStyle(color: Colors.grey.shade700),
                //         ),
                //       ),
                //       Expanded(
                //         child: Divider(
                //           thickness: 0.5,
                //           color: Colors.black,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                // google,facebook
                SizedBox(height: 30),

                

                // SignInButton(
                //   Buttons.google,
                //   onPressed: () async{
                //     // await signInWithGoogle();

                //     // if(mounted){
                //     //   Navigator.push(
                //     //     context, MaterialPageRoute(builder: (_) => HomePage()));
                      
                //     // }
                   
                //     // FirebaseAuthMethods(FirebaseAuth.instance)
                //     //     .signInWithGoogle(context);

                //     // _googleSignUp().then((value) => {
                //     //       Get.to(HomePage()),
                //     //       print("Googled signed in"),
                //     //     });
                //   },
                // ),

                // SignInButton(

                //   Buttons.twitter,
                //   onPressed: () {},

                // ),

                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Only admin can Sign in here ',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    // GestureDetector(
                    //   onTap: () {
                    //     Get.to(SignUp());
                    //   },
                    //   child: const Text(
                    //     'Register Now',
                    //     style: TextStyle(
                    //       color: Colors.blue,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
