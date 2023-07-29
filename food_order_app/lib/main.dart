import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/admin/Add_data.dart';
import 'package:food_order_app/pages/auth_page.dart';
import 'package:food_order_app/pages/fetch.dart';
import 'package:food_order_app/pages/home_page.dart';
import 'package:food_order_app/pages/home_screen.dart';
import 'package:food_order_app/pages/login_or_register_page.dart';
import 'package:food_order_app/pages/nav.dart';
import 'package:food_order_app/pages/scan.dart';
import 'package:food_order_app/providers/order_cart_provider.dart';
import 'package:food_order_app/providers/product_provider.dart';
import 'package:food_order_app/providers/review_cart_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'admin/admin_home.dart';
import 'admin/genQR.dart';
import 'firebase_options.dart';
import 'home_sin.dart';
import 'pages/login_page.dart';
import 'pages/Register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  User? user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    // print("UserId: ");
    var UserEmail = user?.email.toString(); // get the users email
    // print(user?.email.toString());
    // print(user?.uid.toString());
    print(UserEmail);
  }
  

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider<ProductProvider>(
          create: (context) => ProductProvider(),
        ),
          ChangeNotifierProvider<ReviewCartProvider>(
          create: (context) => ReviewCartProvider(),
        ),
         ChangeNotifierProvider<OrderCartProvider>(
          create: (context) => OrderCartProvider(),
        ),

      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        // home: SignIN(),
        // home: HomeScreen(table: '',),
        // home: Navebar(),
        home: QRCodeScannerPage(),
        // home: AddData(),
        // home: AdminHome(),
        // home: GenQR(table: '',),
        // home: fetchData(),
        
      
      ),
    );
  }
}

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
//         // await authenticateWithFirebase(scanData.code);
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
//       UserCredential userCredential =
//           await FirebaseAuth.instance.signInAnonymously();
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



