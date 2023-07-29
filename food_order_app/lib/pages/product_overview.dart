import 'package:flutter/material.dart';
import 'package:food_order_app/pages/home_screen.dart';
import 'package:get/get.dart';

class ProductOverview extends StatelessWidget {
  final String productName;
  final String productImage;
  final int productPrice;
  final String productUnit;
  final String productInfo;
  const ProductOverview({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productUnit,
    required this.productInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomAppBar(
      //   color: Color(0xff12375c),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.all(11),
      //         child: GestureDetector(
      //           onTap: () {
      //             Get.to(() => HomeScreen(table: table));
      //           },
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               Icon(
      //                 Icons.arrow_back,
      //                 color: Colors.white,
      //                 size: 30,
      //               ),
      //               Text(
      //                 'Back',
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        // iconTheme: IconThemeData(color: Color(0xff12375c)),
        title: Text('Product Overview'),
      ),
      body: ListView(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text(
                      productName,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          "$productPrice Tk",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          " / ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          productUnit,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.all(44),
                    child: Image.network(productImage),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    width: double.infinity,
                    child: Text(
                      "Price",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$productPrice Tk",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.symmetric(
                        //       horizontal: 30, vertical: 10),
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.grey),
                        //     borderRadius: BorderRadius.circular(30),
                        //   ),
                        //   child: const Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Icon(
                        //         Icons.add,
                        //         size: 17,
                        //         color: Colors.amberAccent,
                        //       ),
                        //       Text(
                        //         'Add',
                        //         style: TextStyle(
                        //           color: Colors.amber,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    productInfo,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
