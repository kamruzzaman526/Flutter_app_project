import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/admin/genQR.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

import '../utils/showSnackBar.dart';

class AddTable extends StatefulWidget {
  // const AddTable({super.key});

  @override
  State<AddTable> createState() => _AddTableState();
}

makeString(String table, String password, String email) {
  String fultext = table + password + email;
  print("Fulltext: " + fultext);
  return fultext;
}

Encode(String string) {
  // Define the encryption key.
  int key = 3;

  // Encrypt the string.
  String encrypted = "";
  for (int i = 0; i < string.length; i++) {
    int character = string.codeUnitAt(i);
    int encryptedCharacter = character + key;
    if (encryptedCharacter > 122) {
      encryptedCharacter -= 26;
    }
    encrypted += String.fromCharCode(encryptedCharacter);
  }

  // Print the encrypted string.
  print("Encode: " + encrypted);
  return encrypted;
}

class _AddTableState extends State<AddTable> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController tableController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xff12375c),
        centerTitle: true,
        title: Text('Add Table'),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              child: Column(children: [
                SizedBox(height: 50),

                const Icon(
                  Icons.table_restaurant_rounded,
                  size: 90,
                  color: Color(0xff12375c),
                ),
                SizedBox(height: 50),

                Text(
                  'Let\'s create an account for you!',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 15),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: tableController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      hintText: 'Table No. ( Exact 2 Digits )',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),

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
                      hintText: 'Password ( Exact 8 Digits )',
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
                    var table = tableController.text.trim();
                    String text = makeString(table, password, email);
                    String EncodedText = Encode(text);

                    int tableLength = table.length;
                    int passwordLength = password.length;

                    if (tableLength == 2 && passwordLength == 8) {
                      try {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password)
                            .then((value) => {
                                  // log(1),
                                  Get.to(() => GenQR(
                                        table: EncodedText,
                                      )),
                                  print("Table Created !"),
                                  showSnackBar(
                                      context, "Table Created Successfully !!"),
                                });
                      } on FirebaseAuthException catch (e) {
                        showSnackBar(context, e.message!);
                      }
                    }
                    if(tableLength != 2){
                      showSnackBar(context, "Table name will be Exact 2 digits !!");
                    }
                    if(passwordLength != 8){
                      showSnackBar(context, "Password will be Exact 8 digits !!");
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
                        'Add Table',
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
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
