// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/home_sin.dart';
import 'package:food_order_app/utils/showSnackBar.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  // const ForgetPassword({super.key});

  TextEditingController loginEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text('Sign In')),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 95),

                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),
                  SizedBox(height: 50),

                  Text(
                    'An Email will send to set the Password ',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 20),

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
                  //forgot passward

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
                      var loginEmail = loginEmailController.text.trim();

                      try {
                        await FirebaseAuth.instance
                            .sendPasswordResetEmail(email: loginEmail)
                            .then((value) => {
                                  print("Email sent"),
                                  showSnackBar(context, "Email sent"),
                                  Get.off(() =>
                                      SignIN()), // HomeScreen = LoginScreen
                                });
                      } on FirebaseAuthException catch (e) {
                        // print("Error $e");
                        showSnackBar(context, e.message!);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Send Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
