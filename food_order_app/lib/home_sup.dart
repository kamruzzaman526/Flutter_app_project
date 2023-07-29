import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/admin/admin_home.dart';
import 'package:food_order_app/home_sin.dart';
import 'package:food_order_app/pages/home_page.dart';
import 'package:food_order_app/utils/showSnackBar.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignUp extends StatefulWidget {
  // const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade300,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Center(child: Text('sign up')),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              child: Column(children: [
                SizedBox(height: 50),

                const Icon(
                  Icons.add_moderator_outlined,
                  size: 90,
                  color: Color(0xff12375c),
                ),
                SizedBox(height: 50),

                Text(
                  'Let\'s create an Admin',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 15),



                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: emailController,
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
                    controller: passwordController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      hintText: 'Password ( Minimum 6 Digits )',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                //forgot passward
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Text(
                //         'Forgot Password?',
                //         style: TextStyle(
                //           color: Colors.grey.shade600,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: () {
                //     var email = emailController.text.trim();
                //     var password = passwordController.text.trim();

                //     FirebaseAuth.instance
                //         .createUserWithEmailAndPassword(
                //             email: email, password: password)
                //         .then((value) => {
                //           // log(1),
                //           Get.to(HomeScreen()),
                //           print("User Created !"),
                //         });
                //   },
                //   child: Text('sign up'),
                // ),

                GestureDetector(
                  onTap: () {
                    var email = emailController.text.trim();
                    var password = passwordController.text.trim();

                    try {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: email, password: password)
                          .then((value) => {
                                // log(1),
                                Get.to(() => AdminHome()),
                                showSnackBar(context, "Admin Created Successfully !"),
                                print("Admin Created !"),
                              });
                    } on FirebaseAuthException catch (e) {
                      showSnackBar(context, e.message!);
                    }
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
                        'Create',
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
                //     Get.to(HomeScreen());
                //   },
                //   child: Container(
                //     child: Card(
                //       child: Padding(
                //         padding: EdgeInsets.all(10),
                //         child: Text("Already a member? Sign In"),
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
                //   text: "Sign Up with Google",
                //   onPressed: () {},
                // ),

                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'An Admin will get the Administrative Power ',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    // GestureDetector(
                    //   onTap: () {
                    //     Get.to(SignIN());
                    //   },
                    //   child: const Text(
                    //     'Login now',
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
