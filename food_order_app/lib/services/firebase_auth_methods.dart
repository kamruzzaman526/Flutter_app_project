// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:food_order_app/utils/showSnackBar.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class FirebaseAuthMethods {
//   final FirebaseAuth _auth;
//   FirebaseAuthMethods(this._auth);



  
//   Future<void> signInWithGoogle(BuildContext context) async {
//     try {
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//       final GoogleSignInAuthentication? googleAuth =
//           await googleUser?.authentication;

//       if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
//         final credential = GoogleAuthProvider.credential(
//           accessToken: googleAuth?.accessToken,
//           idToken: googleAuth?.idToken,
//         );
//         UserCredential userCredential =
//             await _auth.signInWithCredential(credential);

//             // if(userCredential.user != null){
//             //   if(userCredential.additionalUserInfo!.isNewUser){

//             //   }
//             // }
//       }
//     } on FirebaseAuthException catch (e) {
//       // print("Error $e");
//       showSnackBar(context, e.message!);
//     }
//   }

//   // email signup

//   Future<void> signUpWithEmail({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//     } on FirebaseException catch (e) {
//       showSnackBar(context, e.message!);
//     }
//   }
// }
