// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_order_app/admin/admin_home.dart';
import 'package:get/get.dart';

class GenQR extends StatefulWidget {
  // const GenQR({super.key});
  final String table;
  const GenQR({Key? key, required this.table}) : super(key: key);

  @override
  State<GenQR> createState() => _GenQRState();
}

class _GenQRState extends State<GenQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff12375c),
          title: Text("Table QR Code")),

      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 400,
              color: Colors.blueGrey,
              child: Center(
                child: Text(
                  widget.table,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 55),
            Text(
              "Make A QR code using this text",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "And use it on your table tent.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Get.off(() => AdminHome());
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
                    'Go to Home',
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
    );
  }
}
