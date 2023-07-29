// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:food_order_app/admin/admin_home.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home_sin.dart';
import '../utils/showSnackBar.dart';
import 'home_screen.dart';

class QRCodeScannerPage extends StatefulWidget {
  @override
  _QRCodeScannerPageState createState() => _QRCodeScannerPageState();
}

Decode(String text) {
  String string = text;

  // Define the encryption key.
  int key = 3;

  // Encrypt the string.
  String encrypted = "";
  for (int i = 0; i < string.length; i++) {
    int character = string.codeUnitAt(i);
    int encryptedCharacter = character - key;
//     print(encryptedCharacter);
    if (encryptedCharacter > 126) {
      encryptedCharacter -= 26;
    }
    encrypted += String.fromCharCode(encryptedCharacter);
  }
  return encrypted;
}

class _QRCodeScannerPageState extends State<QRCodeScannerPage> {
  String _scanResult = 'Scan a QR code';
  bool _isScanning = false;

  Future<void> _scanQRCode() async {
    try {
      setState(() {
        _isScanning = true;
      });

      String barcodeScanResult = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', // Color to use for the scanner overlay
        'Cancel', // Text to display for the cancel button
        true, // Enable the flash icon
        ScanMode.QR, // Scan mode (default, QR, barcode)
        // Duration(seconds: 10), // Detection time (e.g., 10 seconds)
      );

      if (barcodeScanResult != '-1') {
        setState(() async {
          //loading circle
          showDialog(
            context: context,
            builder: (context) {
              return Center(child: CircularProgressIndicator());
            },
          );

          String _scanResult = barcodeScanResult;

          String string = Decode(_scanResult);

          String table = string.substring(0, 2);

          String loginPassword = string.substring(2, 10);
          String loginEmail = string.substring(10);

          // Print the results.
          // print("The droped string is: $drop");
          // print("The first 6 letters of the string are: $first6Letters");
          // print("The rest of the string is: $restOfString");

          // var loginEmail = loginEmailController.text.trim();
          // var loginPassword = loginpasswordController.text.trim();

          try {
            final User? firebaseUser = (await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: loginEmail, password: loginPassword))
                .user;
            if (firebaseUser != null) {
              Get.to(HomeScreen(
                table: table,
              ));
              print("Loged in");
            } else {
              print("Check email and password");
            }
          } on FirebaseAuthException catch (e) {
            // print("Error $e");
            showSnackBar(context, e.message!);
          }
        });
        Navigator.of(context).pop();
      } else {
        setState(() {
          _scanResult = 'Scan canceled';
        });
      }
    } catch (e) {
      setState(() {
        _scanResult = 'Error: $e';
      });
    } finally {
      setState(() {
        _isScanning = false;
      });
    }
  }

  // Future<void> go() async {
  //   try {
  //                     final User? firebaseUser = (await FirebaseAuth.instance.signInWithCustomToken(_scanResult))
  //                         .user;
  //                     if (firebaseUser != null) {
  //                       Get.to(HomeScreen());
  //                       print("Loged in");
  //                     } else {
  //                       print("Check email and password");
  //                     }
  //                   } on FirebaseAuthException catch (e) {
  //                     // print("Error $e");
  //                     showSnackBar(context, e.message!);
  //                   }
  // }
  // void df()async{
  //   try {
  //                     final User? firebaseUser = (await FirebaseAuth.instance.signInWithCustomToken(_scanResult))
  //                         .user;
  //                     if (firebaseUser != null) {
  //                       Get.to(HomeScreen());
  //                       print("Loged in");
  //                     } else {
  //                       print("Check email and password");
  //                     }
  //                   } on FirebaseAuthException catch (e) {
  //                     // print("Error $e");
  //                     showSnackBar(context, e.message!);
  //                   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.large(
        onPressed: _isScanning ? null : _scanQRCode,

        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.pink,
          // color: Color(0xff3b3d6e),
          // color: Color(0xff12375c),
          // color: Color(0xff362c5f),
          size: 50,
          // opticalSize: 30,
        ),
        backgroundColor: Colors.white,
        // elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Icon(
                    //   Icons.home_filled,
                    //   color: Colors.pink,
                    //   size: 30,
                    // ),
                    // Text(
                    //   'Home',
                    //   style: TextStyle(
                    //     color: Colors.pink,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 9, top: 66, bottom: 10, left: 43),
              child: Text(
                'QR Scan',
                style: TextStyle(
                  color: Color(0xff12375c),
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: 50, top: 10, bottom: 10, left: 40),
              child: GestureDetector(
                onTap: () {
                  // Get.to(Navebar());
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Icon(
                    //   Icons.shopping_cart_rounded,
                    //   color: Colors.grey,
                    //   size: 30,
                    // ),
                    // Text(
                    //   'Cart',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(right: 20,top: 10, bottom: 10),
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Icon(
            //         Icons.favorite,
            //         color: Colors.white,
            //       ),
            //       Text(
            //         'Fav',
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(right: 20,top: 10, bottom: 10),
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Icon(
            //         Icons.settings,
            //         color: Colors.white,
            //       ),
            //       Text(
            //         'Setting',
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4, bottom: 6),
            child: GestureDetector(
              onTap: () {
                // Get.to(() => SignIN());
                Get.to(() => SignIN());
              },
              child: CircleAvatar(
                radius: 20,
                // backgroundColor: Color(0xffd4d181),
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.admin_panel_settings,
                  // size: 23,
                 color: Color(0xff12375c),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/qrHome.jpg'),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Center(child: CircularProgressIndicator()),

            // Expanded(
            //   child: Stack(
            //     children: [
            //       // Camera preview or any other background UI
            //       Container(
            //         color: Colors.black,
            //       ),
            //       // Scanner overlay
            //       Center(
            //         child: Container(
            //           width: 250,
            //           height: 250,
            //           decoration: BoxDecoration(
            //             border: Border.all(color: Colors.white, width: 2),
            //             borderRadius: BorderRadius.circular(12),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            //         SizedBox(height: 20),
            //         Center(
            //           child: ElevatedButton(
            //             // onPressed: _isScanning ? null : _scanQRCode,
            //             onPressed: () async{
            //               String string = _scanResult;
            // String drop = string.substring(0, 7);

            // // Get the first 6 letters of the string.
            // String loginPassword = string.substring(7, 15);

            // // Get the rest of the string.
            // String loginEmail = string.substring(15);

            // // Print the results.
            // // print("The droped string is: $drop");
            // // print("The first 6 letters of the string are: $first6Letters");
            // // print("The rest of the string is: $restOfString");
            //               // var loginEmail = loginEmailController.text.trim();
            //               // var loginPassword = loginpasswordController.text.trim();

            //                   try {
            //                     final User? firebaseUser = (await FirebaseAuth.instance
            //                             .signInWithEmailAndPassword(
            //                                 email: loginEmail, password: loginPassword))
            //                         .user;
            //                     if (firebaseUser != null) {
            //                       Get.to(HomeScreen());
            //                       print("Loged in");
            //                     } else {
            //                       print("Check email and password");
            //                     }
            //                   } on FirebaseAuthException catch (e) {
            //                     // print("Error $e");
            //                     showSnackBar(context, e.message!);
            //                   }
            //             },
            //             child: Text('Scan QR Code'),
            //           ),
            //         ),
            SizedBox(height: 20),
            // Center(

            //   child: Text(

            //     _scanResult,
            //     style: TextStyle(fontSize: 16),
            //     textAlign: TextAlign.center,

            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
