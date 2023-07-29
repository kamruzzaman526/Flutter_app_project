// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'QR Code Scanner',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: QRCodeScannerScreen(),
//     );
//   }
// }

// class QRCodeScannerScreen extends StatefulWidget {
//   @override
//   _QRCodeScannerScreenState createState() => _QRCodeScannerScreenState();
// }

// class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   QRViewController? controller;
//   bool isLoggedIn = false;

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }

//   void onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((scanData) async {
//       if (!isLoggedIn) {
//         setState(() {
//           isLoggedIn = true;
//         });
//         await authenticateWithFirebase(scanData.code);
//         if (isLoggedIn) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => NewPage()),
//           );
//         }
//       }
//     });
//   }

//   Future<void> authenticateWithFirebase(String uid) async {
//     try {
//       // Authenticate with Firebase using the UID
//       UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
//       // Do something with the authenticated user
//       // For example, you can access the user's ID with: userCredential.user!.uid
//     } catch (e) {
//       print('Firebase authentication failed: $e');
//       setState(() {
//         isLoggedIn = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR Code Scanner'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 5,
//             child: QRView(
//               key: qrKey,
//               onQRViewCreated: onQRViewCreated,
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: isLoggedIn
//                   ? CircularProgressIndicator()
//                   : Text('Scan the QR code to authenticate'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('New Page'),
//       ),
//       body: Center(
//         child: Text('Successfully logged in!'),
//       ),
//     );
//   }
// }
