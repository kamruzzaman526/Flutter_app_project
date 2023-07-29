import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/components/my_button.dart';
import 'package:food_order_app/components/my_textfield.dart';
import 'package:food_order_app/utils/showSnackBar.dart';
import 'package:sign_in_button/sign_in_button.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import 'components/my_textfield.dart';
// import 'components/my_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required void Function() onTap,}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllersdar
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signUserIn() async {
    // FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmail(
    //     email: emailController.text,
    //     password: passwordController.text,
    //     context: context
    //     );
    try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  var passwordController;
  var emailController;
  var signUserIn;
  return Scaffold(
    backgroundColor: Colors.grey[300],
    body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //logo

            SizedBox(height: 50),

            const Icon(
              Icons.lock,
              size: 10,
            ),

            SizedBox(height: 20),

            // welcome back
            Text(
              'Welcome Back, You\'ve been missed!',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
            ),

            SizedBox(height: 15),

            //username textfield

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.2),
              child: MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
            ),

            SizedBox(height: 10),

            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            SizedBox(height: 10),
            //forgot passward
            Padding(
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
            SizedBox(height: 30),

            //sign in button

            MyButton(
              onTap: signUserIn,
            ),

            // or continue with
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            // google,facebook
            SizedBox(height: 20),

            SignInButton(
              Buttons.google,
              onPressed: () {},
            ),

            // not a member ? register
            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                ),
                SizedBox(width: 4),
                const Text(
                  'Register Now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    ),
  );
}


