// import 'package:flutter/material.dart';
// import 'package:food_app/config/colors.dart';
// import 'package:food_app/providers/product_provider.dart';
// import 'package:food_app/providers/user_provider.dart';
// import 'package:food_app/screens/product_overview/product_overview.dart';
// import 'package:food_app/screens/home/singal_product.dart';
// import 'package:food_app/screens/review_cart/review_cart.dart';
// import 'package:food_app/screens/search/search.dart';
// import 'package:provider/provider.dart';
// import 'drawer_side.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   // ProductProvider productProvider;

//   Widget _buildHerbsProduct(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Herbs Seasonings'),
//               GestureDetector(
//                 onTap: () {
//                   // Navigator.of(context).push(
//                   //   MaterialPageRoute(
//                   //     builder: (context) => Search(
//                   //       search: productProvider.getHerbsProductDataList,
//                   //     ),
//                   //   ),
//                   // );
//                 },
//                 child: Text(
//                   'view all',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: productProvider.getHerbsProductDataList.map(
//               (herbsProductData) {
//                 return SingalProduct(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => ProductOverview(
//                           productId: herbsProductData.productId,
//                           productPrice: herbsProductData.productPrice,
//                           productName: herbsProductData.productName,
//                           productImage: herbsProductData.productImage,
//                         ),
//                       ),
//                     );
//                   },
//                   productId: herbsProductData.productId,
//                   productPrice: herbsProductData.productPrice,
//                   productImage: herbsProductData.productImage,
//                   productName: herbsProductData.productName,
//                   productUnit:herbsProductData ,
//                 );
//               },
//             ).toList(),
//             // children: [

//             // ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildFreshProduct(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Fresh Fruits'),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => Search(
//                         search: productProvider.getFreshProductDataList,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Text(
//                   'view all',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: productProvider.getFreshProductDataList.map(
//               (freshProductData) {
//                 return SingalProduct(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => ProductOverview(
//                           productId: freshProductData.productId,
//                           productImage: freshProductData.productImage,
//                           productName: freshProductData.productName,
//                           productPrice: freshProductData.productPrice,
//                         ),
//                       ),
//                     );
//                   },
//                   productId: freshProductData.productId,
//                   productImage: freshProductData.productImage,
//                   productName: freshProductData.productName,
//                   productPrice: freshProductData.productPrice,
//                   productUnit:freshProductData,
//                 );
//               },
//             ).toList(),
//           ),
//         ),
//       ],
//     );
//   }


//   Widget _buildRootProduct() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Root Vegetable'),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => Search(
//                         search: productProvider.getRootProductDataList,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Text(
//                   'view all',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: productProvider.getRootProductDataList.map(
//               (rootProductData) {
//                 return SingalProduct(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         // builder: (context) => ProductOverview(
//                           productId: rootProductData.productId,
//                           productImage: rootProductData.productImage,
//                           productName: rootProductData.productName,
//                           productPrice: rootProductData.productPrice,
//                         ),
//                       ),
//                     );
//                   },
//                   productId: rootProductData.productId,
//                   productImage: rootProductData.productImage,
//                   productName: rootProductData.productName,
//                   productPrice: rootProductData.productPrice,
//                   productUnit: rootProductData,
//                 );
//               },
//             ).toList(),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   void initState() {
//     // ProductProvider initproductProvider = Provider.of(context, listen: false);
//     // initproductProvider.fatchHerbsProductData();
//     // initproductProvider.fatchFreshProductData();
//     // initproductProvider.fatchRootProductData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // productProvider = Provider.of(context);
//     // UserProvider userProvider = Provider.of(context);
//     // userProvider.getUserData();
//     return Scaffold(
//       // drawer: DrawerSide(
//       //   userProvider: userProvider,
//       // ),
//       appBar: AppBar(
//         // iconTheme: IconThemeData(color: textColor),
//         title: Text(
//           'Home',
//           // style: TextStyle(color: textColor, fontSize: 17),
//         ),
//         actions: [
//           CircleAvatar(
//             radius: 15,
//             backgroundColor: Color(0xffd6d382),
//             child: IconButton(
//               onPressed: () {
//                 // Navigator.of(context).push(
//                 //   MaterialPageRoute(
//                 //     builder: (context) =>
//                 //         Search(search: productProvider.gerAllProductSearch),
//                 //   ),
//                 // );
//               },
//               icon: Icon(
//                 Icons.search,
//                 size: 17,
//                 // color: textColor,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 5),
//             child: GestureDetector(
//               onTap: () {
//                 // Navigator.of(context).push(
//                 //   MaterialPageRoute(
//                 //     // builder: (context) => ReviewCart(),
//                 //   ),
//                 // );
//               },
//               child: CircleAvatar(
//                 backgroundColor: Color(0xffd6d382),
//                 radius: 15,
//                 child: Icon(
//                   Icons.shop,
//                   size: 17,
//                   // color: textColor,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//         child: ListView(
//           children: [
//             Container(
//               height: 150,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: NetworkImage(
//                       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU'),
//                 ),
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 2,
//                     child: Container(
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding:
//                                 const EdgeInsets.only(right: 130, bottom: 10),
//                             child: Container(
//                               height: 50,
//                               width: 100,
//                               decoration: BoxDecoration(
//                                 color: Color(0xffd1ad17),
//                                 borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(50),
//                                   bottomLeft: Radius.circular(50),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   'Vegi',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     color: Colors.white,
//                                     shadows: [
//                                       BoxShadow(
//                                           color: Colors.green,
//                                           blurRadius: 10,
//                                           offset: Offset(3, 3))
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Text(
//                             '30% Off',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.green[100],
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20),
//                             child: Text(
//                               'On all vegetables products',
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(),
//                   ),
//                 ],
//               ),
//             ),
//             _buildHerbsProduct(context),
//             _buildFreshProduct(context),
//             _buildRootProduct(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/home_sin.dart';

import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 230,
      width: 170,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
                'https://freepngimg.com/thumb/food/4-2-food-png.png'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Burger',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '50\$/50 Gram',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '50 Gram',
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 20,
                                  color: Color(0xffd0b84c),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadiusDirectional.circular(8),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Color(0xffd0b84c),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  // fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffd0b84c),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                size: 15,
                                color: Color(0xffd0b84c),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xffd6b738),
          // backgroundColor: Colors.orangeAccent,
          title: Text(
            'Home Page',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            CircleAvatar(
              radius: 13,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.search,
                // size: 23,
                color: Colors.black,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Color(0xffd4d181),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  // size: 23,
                  // color: Colors.black,
                ),
              ),
            ),

            CircleAvatar(
              radius: 13,
              backgroundColor: Color(0xffd4d181),
              child: GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    Get.off(SignIN());
                    print("sign out !!");
                  },
                  child: Icon(Icons.logout)),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(children: [
          Container(
            height: 150,
            // width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                // image: AssetImage('assets/foodOrder.jpg'),
                image: NetworkImage(
                    'https://images.pexels.com/photos/5677796/pexels-photo-5677796.jpeg'),
              ),
              borderRadius: BorderRadius.circular(10),
              // color: Colors.amber,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    // color: Colors.red,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 130, bottom: 10),
                        child: Container(
                          height: 47,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Color(0xffd1ad17),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                bottomLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              )),
                          child: Center(
                            child: Text(
                              'New',
                              style: TextStyle(
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3, 3)),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "30% Off",
                        style: TextStyle(
                          fontSize: 37,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "On all vegetable foods ",
                        style: TextStyle(
                          // fontSize: 37,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Harbs Seasoning',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singleProducts(),
                singleProducts(),
                singleProducts(),
                singleProducts(),
                singleProducts(),
                singleProducts(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Soft Drinks',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  'View all',
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singleProducts(),
                singleProducts(),
                singleProducts(),
                singleProducts(),
                singleProducts(),
                singleProducts(),
              ],
            ),
          ),


        ]),
      ),
    );
  }
}