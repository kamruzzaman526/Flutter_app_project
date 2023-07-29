// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';
// import 'package:qrcodescanner/home_2.dart';
// import 'package:qrcodescanner/screens/scanner/QRscannerOverlay.dart';
// import 'package:qrcodescanner/screens/scanner/foundScreen.dart';

// import '../utils/showSnackBar.dart';
// import 'home_1.dart';
// import 'home_screen.dart';

// class Scanner extends StatefulWidget {
//   const Scanner({Key? key}) : super(key: key);

//   @override
//   State<Scanner> createState() => _ScannerState();
// }

// class _ScannerState extends State<Scanner> {
//   MobileScannerController cameraController = MobileScannerController();
//   bool _screenOpened = false;
  
//   get controller => null;
  

//   @override
//   void initState() {
//     // TODO: implement initState
//     this._screenWasClosed();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black.withOpacity(0.5),
//         appBar: AppBar(
//           backgroundColor: Colors.pinkAccent,
//           title: Text("Scanner",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
//           elevation: 0.0,
//         ),
//         body: Stack(
//           children: [
//             MobileScanner(
              
//               allowDuplicates: false,
//               controller: cameraController,
//               onDetect: _foundBarcode,
              
//               // detectionSpeed: DetectionSpeed.normal,
//               // facing: CameraFacing.front,
//               // torchEnabled: true,
//             ),
//             QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5))
//           ],
          
//           // controller.dispose();
//           // scannedCode.dispose();
//         ));
//   }

//   Future<void> _foundBarcode(Barcode barcode, MobileScannerArguments? args) async {
//     print(barcode);
//     await controller.pauseCamera();
//     if (!_screenOpened) {
//       final String code = barcode.rawValue ?? "___";
//       _screenOpened = false;
//       cameraController = false as MobileScannerController;
//       try {
//                       final User? firebaseUser = (await FirebaseAuth.instance.signInWithCustomToken(_scanResult))
//                           .user;
//                       if (firebaseUser != null) {
//                         Get.to(HomeScreen());
//                         print("Loged in");
//                       } else {
//                         print("Check email and password");
//                       }
//                     } on FirebaseAuthException catch (e) {
//                       // print("Error $e");
//                       showSnackBar(context, e.message!);
//                     }

//       //here push navigation result page
//       // Navigator.push(
//       //         context,
//       //         MaterialPageRoute(
//       //             builder: (context) =>
//       //                 Home2(value: code, screenClose: _screenWasClosed)))
//       //     .then((value) => print(value));

//       // builder: builder) => FoundScreen(value: code, screenClose: _screenWasClosed))
//     }

//   }

//   void _screenWasClosed() {
//     _screenOpened = false;

//   }

//   // void _foundBarcode(Barcode barcode, MobileScannerArguments? args){
//   //   print(barcode);
//   //   if(!_screenOpened){
//   //     final String code = barcode.rawValue ?? "___";
//   //     _screenOpened = false;
//   //     //here push navigation result page
//   //     Navigator.push(context, MaterialPageRoute(builder: (context)=> FoundScreen(value: code, screenClose: _screenWasClosed))).then((value) => print(value));  //here navigate

//   //         // builder: builder) => FoundScreen(value: code, screenClose: _screenWasClosed))
//   //   }
//   // }
  
// }
