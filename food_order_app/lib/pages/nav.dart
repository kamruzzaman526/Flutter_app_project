import 'package:flutter/material.dart';
import 'package:food_order_app/pages/home_screen.dart';
import 'package:get/get.dart';

import '../components/kt.dart';

class Navebar extends StatelessWidget {
  // const Navebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Orders',
          style: TextStyle(
            color: Colors.white,
          ),

        ),
      ),
      // backgroundColor: Colors.cyan,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.pink,
          size: 30,
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
                onTap: () {
                  Get.to(HomeScreen(table: '',));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 9, top: 42, bottom: 10, left: 43),
              child: Text(
                'QR Scan',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: 50, top: 10, bottom: 10, left: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.pink,
                    size: 30,
                  ),
                  Text(
                    'Order',
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                ],
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
      
    );
  }
}
