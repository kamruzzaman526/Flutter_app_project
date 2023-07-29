import 'package:flutter/material.dart';
import 'package:food_order_app/order_cart.dart';
import 'package:food_order_app/pages/home_page.dart';
import 'package:food_order_app/pages/home_screen.dart';
import 'package:get/get.dart';

import '../home_sup.dart';
import 'Add_data.dart';
import 'add_table.dart';

class AdminHome extends StatefulWidget {
  // const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Color(0xff3b3d6e),
        backgroundColor: Color(0xff12375c),
        // backgroundColor: Color(0xff362c5f),
        title: Text(
          'Admin Console',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4, bottom: 6),
            child: GestureDetector(
              onTap: () {
                // Get.to(() => SignIN());
                Get.to(() => HomeScreen(table: "",));
              },
              child: CircleAvatar(
                radius: 20,
                // backgroundColor: Color(0xffd4d181),
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.home_filled,
                  // size: 23,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],


      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(11),
              child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    // color: Colors.grey[300],
                    color: Color(0xff3b3d6e),
                    //  color: Color(0xff12375c),
                    //  color: Color(0xff362c5f),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => AddData());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.add_task_outlined,
                                color: Colors.white,
                                // color: Color(0xff3b3d6e),
                                //  color: Color(0xff12375c),
                                // color: Color(0xff362c5f),

                                size: 54,
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Add Data',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => AddTable());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.table_restaurant_rounded,
                                color: Colors.white,
                                size: 54,
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Add Table',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => SignUp());
                              },
                              child: Icon(
                                Icons.add_moderator_outlined,
                                color: Colors.white,
                                size: 54,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('Add Admin',style: TextStyle(
                                  color: Colors.white,
                                ),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => OrderCart(table: ''));
                              },
                              child: Icon(
                                Icons.format_list_numbered_rounded,
                                color: Colors.white,
                                size: 54,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('Order',style: TextStyle(
                                  color: Colors.white,
                                ),),
                          ],
                        ),
                      ),



                    ],
                  )),
            )

            
          ],

        ),
      ),
    );
  }
}
