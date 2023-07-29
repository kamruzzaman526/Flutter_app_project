// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:food_order_app/pages/single_product.dart';
// import 'package:food_order_app/pages/td.dart';
// import 'package:get/get.dart';

// // import 'package:food_app/config/colors.dart';

// // import 'package:food_app/screens/home_screen/singal_product.dart';

// // import '../productOverView/product_overview.dart';

// import '../home_sin.dart';
// import '../pages/nav.dart';
// // import 'colors.dart';
// // import 'drawer_side.dart';
// // import 'nav.dart';


// class kito extends StatelessWidget {
//   // const kito({super.key});
//   final String table;
//   const kito({Key? key, required this.table}) : super(key: key);


//   Widget _buildFastFoodProduct(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Fast Food',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//               Text(
//                 'View all',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               SingalProduct(
//                 productImage: ('https://www.pngmart.com/files/16/Burger-Junk-Food-PNG-Photos.png'),
//                 productName:'hello',
//                 productPrice:'10',
//                 productUnit:'unit',
//                 onTap: () {},
//               ),

//               // SingalProduct(

//               //   productImage:

//               //       ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),

//               //   productName: 'Herbs',

//               //   onTap: () {

//               //     Navigator.of(context).push(

//               //       MaterialPageRoute(

//               //         builder: (context) => ProductOverview(),

//               //       ),

//               //     );

//               //   },

//               // ),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/16/Burger-Junk-Food-PNG-Photos.png'),
//               //     productName: 'Cheese Burger',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Plate',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/17/French-Fries-PNG-Image.png'),
//               //     productName: 'Frenech Fries',
//               //     productPrice: '23 Tk',
//               //     productUnit: '1 Plate',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/1/Cheese-Pizza.png'),
//               //     productName: 'Cheese Pizza',
//               //     productPrice: '49 Tk',
//               //     productUnit: '1 pice',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/22/Breakfast-sandwich-PNG-Isolated-Image.png'),
//               //     productName: 'Sandwich',
//               //     productPrice: '50 Tk',
//               //     productUnit: '1 Pice',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:('https://www.pngmart.com/files/16/Bread-Cheese-Sandwich-PNG-Transparent-Image.png'),
//               //     productName: 'Sandwich 3x',
//               //     productPrice: '120 Tk',
//               //     productUnit: '3 Pice pack',
//               //     onTap: () {}),
//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/1/Burger-Food-PNG.png'),
//               //     productName: 'Burger',
//               //     productPrice: '25 Tk',
//               //     productUnit: '1 Pice',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/7/Kebab-PNG-Picture.png'),
//               //     productName: 'Mexi. Shawarma',
//               //     productPrice: '79 Tk',
//               //     productUnit: '3 Pice Plate',
//               //     onTap: () {}),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDrinkProduct(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Soft Drinks',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//               Text(
//                 'View all',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               // SingalProduct(

//               //

//               //   productImage:

//               //       ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),

//               //   productName: 'Herbs', onTap: () {

//               //   Navigator.of(context).push(MaterialPageRoute(

//               //       builder: (context) =>  ProductOverview()));

//               // },

//               // ),

//               //

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/16/Transparent-Water-Bottle-Transparent-PNG.png'),
//               //     productName: 'Drinking Water',
//               //     productPrice: '25 Tk',
//               //     productUnit: '500 ml',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/22/Coke-Cola-PNG.png'),
//               //     productName: 'Coca Cola',
//               //     productPrice: '30Tk',
//               //     productUnit: '250 ml',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/21/7up-PNG-Photos.png'),
//               //     productName: '7 Up',
//               //     productPrice: '70 Tk',
//               //     productUnit: '1 Litre',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/21/7up-PNG-Picture.png'),
//               //     productName: '7 Up Can',
//               //     productPrice: '30 Tk',
//               //     productUnit: '250 ml',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/8/Pepsi-PNG-Image.png'),
//               //     productName: 'Pepsi Can',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Litre',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/8/Pepsi-PNG-Pic.png'),
//               //     productName: 'Pepsi',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Litre',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/22/Fanta-PNG-Isolated-Image.png'),
//               //     productName: 'Fanta',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Litre',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/22/Fanta-PNG-Transparent.png'),
//               //     productName: 'Fanta Can',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Litre',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/22/Sprite-PNG-Photos.png'),
//               //     productName: 'Sprite',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Litre',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/8/Pepsi-PNG-Pic.png'),
//               //     productName: 'Pepsi',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/8/Pepsi-PNG-Pic.png'),
//               //     productName: 'Pepsi',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/8/Pepsi-PNG-Pic.png'),
//               //     productName: 'Pepsi',
//               //     onTap: () {}),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildFoodProduct(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Foods',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//               Text(
//                 'View all',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               // SingalProduct(

//               //

//               //   productImage:

//               //       ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),

//               //   productName: 'Herbs', onTap: () {

//               //   Navigator.of(context).push(MaterialPageRoute(

//               //       builder: (context) =>  ProductOverview()));

//               // },

//               // ),

//               //

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/22/Non-Veg-PNG-HD-Isolated.png'),
//               //     productName: 'Mutton Byriany',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Plate',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/22/Chicken-Grill-PNG-Transparent.png'),
//               //     productName: 'Chicken Grill',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Plate',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/15/Roasted-Barbecue-Chicken-Transparent-PNG.png'),
//               //     productName: 'Barbicue',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Plate',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/22/Grilled-PNG-HD.png'),
//               //     productName: 'Grilled Chicken',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Plate',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/17/Fried-Rice-PNG-Transparent-Image.png'),
//               //     productName: 'FriedRice+chicken',
//               //     productPrice: '99 Tk',
//               //     productUnit: '1 Plate',
//               //     onTap: () {}),

//               // SingalProduct(
//               // productImage:
//               //     ('https://www.pngmart.com/files/22/Non-Veg-PNG-HD-Isolated.png'),
//               // productName: 'Mutton Byriany',
//               // onTap: () {}),

//               // SingalProduct(
//               // productImage:
//               //     ('https://www.pngmart.com/files/22/Non-Veg-PNG-HD-Isolated.png'),
//               // productName: 'Mutton Byriany',
//               // onTap: () {}),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildSnackProduct(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Snacks',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//               Text(
//                 'View all',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               // SingalProduct(

//               //

//               //   productImage:

//               //       ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),

//               //   productName: 'Herbs', onTap: () {

//               //   Navigator.of(context).push(MaterialPageRoute(

//               //       builder: (context) =>  ProductOverview()));

//               // },

//               // ),

//               //

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.pngmart.com/files/16/Lays-Chips-PNG-HD.png'),
//               //     productName: 'Layes',
//               //     productPrice: '10 Tk',
//               //     productUnit: '1 Packet',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.freepnglogos.com/uploads/potato-chips-png/potato-chips-bingo-39.png'),
//               //     productName: 'Bingo',
//               //     productPrice: '10 Tk',
//               //     productUnit: '1 Packet',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.freepnglogos.com/uploads/biscuit-png/cashew-cookies-good-day-biscuits-brands-india-29.png'),
//               //     productName: 'Good Day',
//               //     productPrice: '10 Tk',
//               //     productUnit: '1 Packet',
//               //     onTap: () {}),

//               // SingalProduct(
//               //     productImage:
//               //         ('https://www.freepnglogos.com/uploads/biscuit-png/marie-biscuit-top-best-selling-biscuits-brands-india-10.png'),
//               //     productName: 'Marie Gold',
//               //     productPrice: '10 Tk',
//               //     productUnit: '1 Packet',
//               //     onTap: () {}),

//               // SingalProduct(
//               // productImage:
//               //     ('https://www.pngmart.com/files/17/Fried-Rice-PNG-Transparent-Image.png'),
//               // productName: 'FriedRice+chicken',
//               // onTap: () {}),

//               // SingalProduct(
//               // productImage:
//               //     ('https://www.pngmart.com/files/22/Non-Veg-PNG-HD-Isolated.png'),
//               // productName: 'Mutton Byriany',
//               // onTap: () {}),

//               // SingalProduct(
//               // productImage:
//               //     ('https://www.pngmart.com/files/22/Non-Veg-PNG-HD-Isolated.png'),
//               // productName: 'Mutton Byriany',
//               // onTap: () {}),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildOtherProduct(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Others',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//               Text(
//                 'View all',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               // SingalProduct(

//               //

//               //   productImage:

//               //       ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),

//               //   productName: 'Herbs', onTap: () {

//               //   Navigator.of(context).push(MaterialPageRoute(

//               //       builder: (context) =>  ProductOverview()));

//               // },

//               // ),

//               //

//             //   SingalProduct(
//             //       productImage:
//             //           ('https://www.pngmart.com/files/8/Milkshake-PNG-File-Download-Free.png'),
//             //       productName: 'Milk Shake',
//             //       productPrice: '50 Tk',
//             //       productUnit: '1 Glass',
//             //       onTap: () {}),

//             //   SingalProduct(
//             //       productImage:
//             //           ('https://www.pngmart.com/files/5/Milkshake-PNG-Transparent-Image.png'),
//             //       productName: 'Milk Chokolet',
//             //       productPrice: '50 Tk',
//             //       productUnit: '1 Glass',
//             //       onTap: () {}),

//             //   SingalProduct(
//             //       productImage:
//             //           ('https://www.pranfoods.net/sites/default/files/field/image/frooto-product-image750x750-min.png'),
//             //       productName: 'Pran Frooto',
//             //       productPrice: '50 Tk',
//             //       productUnit: '1 Lit. Bottle',
//             //       onTap: () {}),

//             //   SingalProduct(
//             //       productImage:
//             //           ('https://www.pranfoods.net/sites/default/files/field/image/mango-pack-250ml-min.png'),
//             //       productName: 'Pran Mango Juice',
//             //       productPrice: '50 Tk',
//             //       productUnit: '1 Lit. Bottle',
//             //       onTap: () {}),

//             //   SingalProduct(
//             //       productImage:
//             //           ('data:image/jpeg;base64,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'),
//             //       productName: 'Frutika',
//             //       productPrice: '50 Tk',
//             //       productUnit: '1 Lit. Bottle',
//             //       onTap: () {}),

//             //   SingalProduct(
//             //       productImage:
//             //           ('https://www.pngmart.com/files/22/Non-Veg-PNG-HD-Isolated.png'),
//             //       productName: 'Mutton Byriany',
//             //       productPrice: '50 Tk',
//             //       productUnit: '1 Plate',
//             //       onTap: () {}),

//             //   SingalProduct(
//             //       productImage:
//             //           ('https://www.pngmart.com/files/22/Non-Veg-PNG-HD-Isolated.png'),
//             //       productName: 'Mutton Byriany',
//             //       productPrice: '50 Tk',
//             //       productUnit: '1 Plate',
//             //       onTap: () {}),
//             ],
//           ),
//         ),
//       ],
//     );
//   }







//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(
//           Icons.qr_code_scanner,
//           color: Colors.pink,
//           size: 30,
//           // opticalSize: 30,
//         ),
//         backgroundColor: Colors.white,
//         // elevation: 0,
//       ),
//       bottomNavigationBar: BottomAppBar(
//         notchMargin: 8,
//         shape: CircularNotchedRectangle(),
//         color: Colors.white,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(left: 50),
//               child: GestureDetector(
//                 onTap: () {
//                   Get.to(kito(
//                     table: '',
//                   ));
//                 },
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(
//                       Icons.home_filled,
//                       color: Colors.pink,
//                       size: 30,
//                     ),
//                     Text(
//                       'Home',
//                       style: TextStyle(
//                         color: Colors.pink,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(right: 9, top: 42, bottom: 10, left: 43),
//               child: Text(
//                 'QR Scan',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 13,
//                 ),
//               ),
//             ),
//             Padding(
//               padding:
//                   EdgeInsets.only(right: 50, top: 10, bottom: 10, left: 40),
//               child: GestureDetector(
//                 onTap: () {
//                   Get.to(Navebar());
//                 },
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(
//                       Icons.shopping_bag_outlined,
//                       color: Colors.grey,
//                       size: 30,
//                     ),
//                     Text(
//                       'Order',
//                       style: TextStyle(
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Padding(
//             //   padding: EdgeInsets.only(right: 20,top: 10, bottom: 10),
//             //   child: Column(
//             //     mainAxisSize: MainAxisSize.min,
//             //     children: [
//             //       Icon(
//             //         Icons.favorite,
//             //         color: Colors.white,
//             //       ),
//             //       Text(
//             //         'Fav',
//             //         style: TextStyle(
//             //           color: Colors.white,
//             //         ),
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             // Padding(
//             //   padding: EdgeInsets.only(right: 20,top: 10, bottom: 10),
//             //   child: Column(
//             //     mainAxisSize: MainAxisSize.min,
//             //     children: [
//             //       Icon(
//             //         Icons.settings,
//             //         color: Colors.white,
//             //       ),
//             //       Text(
//             //         'Setting',
//             //         style: TextStyle(
//             //           color: Colors.white,
//             //         ),
//             //       ),
//             //     ],
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//       // drawer: DrawerSide(),
//       drawer: Drawer(
//         backgroundColor: Colors.white,
//         child: ListView(
//           children: [
//             DrawerHeader(
//               padding: EdgeInsets.all(0),
//               child: Container(
//                 color: Colors.white,
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 20),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 25),
//                         child: Text(
//                           'Welcome To',
//                           style: TextStyle(
//                             color: Colors.pink,
//                             fontSize: 23,
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 25),
//                         child: Text(
//                           "Table "+table,
//                           style: TextStyle(

//                             color: Colors.pink,
//                             fontSize: 18,
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       // Padding(
//                       //   padding: const EdgeInsets.only(right: 152),
//                       //   child: Text(
//                       //     "Table A5",
//                       //     style: TextStyle(
//                       //       color: Colors.pink,
//                       //       fontSize: 18,
//                       //       // fontWeight: FontWeight.bold,
//                       //     ),
//                       //   ),
//                       // ),
//                     ]),
//               ),
//             ),
//             Divider(
//               height: 10,
//               color: Colors.pink,
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.home,
//                 color: Colors.pink,
//               ),
//               title: Text(
//                 'Home',
//                 style: TextStyle(
//                   letterSpacing: 0.5,
//                   color: Colors.pink,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.shopping_bag_rounded,
//                 color: Colors.pink,
//               ),
//               title: Text(
//                 'Order',
//                 style: TextStyle(
//                   letterSpacing: 0.5,
//                   color: Colors.pink,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.notifications,
//                 color: Colors.pink,
//               ),
//               title: Text(
//                 'Notification',
//                 style: TextStyle(
//                   letterSpacing: 0.5,
//                   color: Colors.pink,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.rate_review_outlined,
//                 color: Colors.pink,
//               ),
//               title: Text(
//                 'Review',
//                 style: TextStyle(
//                   letterSpacing: 0.5,
//                   color: Colors.pink,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.favorite_rounded,
//                 color: Colors.pink,
//               ),
//               title: Text(
//                 'Wishlist',
//                 style: TextStyle(
//                   letterSpacing: 0.5,
//                   color: Colors.pink,
//                 ),
//               ),
//             ),
//             SizedBox(height: 12),
//             Container(
//               height: 90,
//               // color: Colors.amber,
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Contact Support',
//                     style: TextStyle(
//                       color: Colors.pink,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Row(
//                     children: [
//                       Text(
//                         'Call Us:',
//                         style: TextStyle(
//                           color: Colors.pink,
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(
//                         '+880 1776838620',
//                         style: TextStyle(
//                           color: Colors.pink,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 3),
//                   Row(
//                     children: [
//                       Text(
//                         'Mail Us:',
//                         style: TextStyle(
//                           color: Colors.pink,
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(
//                         'ksupport@gmail.com',
//                         style: TextStyle(
//                           color: Colors.pink,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 15),
//             Container(
//               height: 50,
//               // color: Colors.black,
//               child: Column(
//                 children: [
//                   Text(
//                     'App Developed By',
//                     style: TextStyle(
//                       color: Colors.pink,
//                     ),
//                   ),
//                   SizedBox(height: 2),
//                   Text(
//                     'Kamruzzaman, Liza & Rashed',
//                     style: TextStyle(
//                       color: Colors.pink,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),

//       appBar: AppBar(
//         // backgroundColor: primaryColor,
//         // iconTheme: IconThemeData(color: textColor),
//         iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Colors.pink,
//         // backgroundColor: Colors.orangeAccent,

//         title: Text(
//           // 'Home Page',
//           "Table " + table,
//           style: TextStyle(
//             // letterSpacing: 0.5,
//             color: Colors.white,
//           ),
//         ),

//         actions: [
//           CircleAvatar(
//             radius: 15,
//             // backgroundColor: Color(0xffd4d181),
//             backgroundColor: Colors.pinkAccent,
//             child: Icon(
//               Icons.search,
//               // size: 23,
//               color: Colors.white,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 5),
//             child: CircleAvatar(
//               radius: 15,
//               // backgroundColor: Color(0xffd4d181),
//               backgroundColor: Colors.pinkAccent,

//               child: Icon(
//                 Icons.shopping_bag_outlined,
//                 // size: 23,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 5),
//             child: CircleAvatar(
//               radius: 15,
//               // backgroundColor: Color(0xffd4d181),
//               backgroundColor: Colors.pinkAccent,
//               child: GestureDetector(
//                   onTap: () {
//                     FirebaseAuth.instance.signOut();
//                     Get.off(SignIN());
//                     // Get.to(QRCodeScannerPage());
//                     // Get.off(QRCodeScannerPage());
//                     print("sign out !!");
//                   },
//                   child: Icon(
//                     Icons.logout,
//                     color: Colors.white,
//                   )),
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
//               // width: 150,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   // image: AssetImage('assets/foodOrder.jpg'),
//                   image: NetworkImage(
//                       // 'https://images.pexels.com/photos/5677703/pexels-photo-5677703.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
//                       'https://images.pexels.com/photos/5677795/pexels-photo-5677795.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//                 // color: Colors.amber,
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       // color: Colors.red,
//                       child: Column(children: [
//                         Padding(
//                           padding:
//                               const EdgeInsets.only(right: 130, bottom: 10),
//                           child: Container(
//                             height: 47,
//                             width: 95,
//                             decoration: BoxDecoration(
//                                 color: Color(0xffd1ad17),
//                                 borderRadius: BorderRadius.only(
//                                   bottomRight: Radius.circular(30),
//                                   bottomLeft: Radius.circular(5),
//                                   topRight: Radius.circular(5),
//                                 )),
//                             child: Center(
//                               child: Text(
//                                 'New',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     // fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     shadows: [
//                                       // BoxShadow(
//                                       //     color: Colors.green,
//                                       //     blurRadius: 10,
//                                       //     offset: Offset(3, 3)),
//                                     ]),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "30% Off",
//                           style: TextStyle(
//                             fontSize: 37,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           // "On all vegetable foods ",
//                           'Offer for all Fast Food ',
//                           style: TextStyle(
//                             // fontSize: 37,
//                             color: Colors.white,
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ]),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(),
//                   ),
//                 ],
//               ),
//             ),
//             _buildFastFoodProduct(context),
//             _buildDrinkProduct(context),
//             _buildFoodProduct(context),
//             SizedBox(height: 20),
//             Container(
//               height: 150,
//               // width: 150,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   // image: AssetImage('assets/foodOrder.jpg'),
//                   image: NetworkImage(
//                       'https://images.pexels.com/photos/5709276/pexels-photo-5709276.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//                 // color: Colors.amber,
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       child: Column(children: [
//                         Padding(
//                           padding:
//                               const EdgeInsets.only(right: 130, bottom: 10),
//                           child: Container(
//                               // height: 47,
//                               // width: 95,
//                               // decoration: BoxDecoration(
//                               //     color: Color(0xffd1ad17),
//                               //     borderRadius: BorderRadius.only(
//                               //       bottomRight: Radius.circular(30),
//                               //       bottomLeft: Radius.circular(5),
//                               //       topRight: Radius.circular(5),
//                               //     )),
//                               // child: Center(
//                               //   child: Text(
//                               //     'New',
//                               //     style: TextStyle(
//                               //         fontSize: 18,
//                               //         // fontWeight: FontWeight.bold,
//                               //         color: Colors.white,
//                               //         shadows: [
//                               //           BoxShadow(
//                               //               color: Colors.green,
//                               //               blurRadius: 10,
//                               //               offset: Offset(3, 3)),
//                               //         ]),
//                               //   ),
//                               // ),
//                               ),
//                         ),
//                         SizedBox(
//                           height: 12,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 20),
//                           child: Text(
//                             "100% Fresh",
//                             style: TextStyle(
//                               fontSize: 37,
//                               color: Colors.orange,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "Quality vegetable foods",
//                           style: TextStyle(
//                             // fontSize: 37,
//                             color: Colors.white,
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ]),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                         // color: Colors.red,

//                         ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             _buildSnackProduct(context),
//             SizedBox(height: 20),
//             Container(
//               height: 150,
//               // width: 150,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   // image: AssetImage('assets/foodOrder.jpg'),
//                   image: NetworkImage(
//                       'https://images.pexels.com/photos/1322184/pexels-photo-1322184.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//                 // color: Colors.amber,
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       child: Column(children: [
//                         Padding(
//                           padding:
//                               const EdgeInsets.only(right: 130, bottom: 10),
//                           child: Container(
//                               // height: 47,
//                               // width: 95,
//                               // decoration: BoxDecoration(
//                               //     color: Color(0xffd1ad17),
//                               //     borderRadius: BorderRadius.only(
//                               //       bottomRight: Radius.circular(30),
//                               //       bottomLeft: Radius.circular(5),
//                               //       topRight: Radius.circular(5),
//                               //     )),
//                               // child: Center(
//                               //   child: Text(
//                               //     'New',
//                               //     style: TextStyle(
//                               //         fontSize: 18,
//                               //         // fontWeight: FontWeight.bold,
//                               //         color: Colors.white,
//                               //         shadows: [
//                               //           BoxShadow(
//                               //               color: Colors.green,
//                               //               blurRadius: 10,
//                               //               offset: Offset(3, 3)),
//                               //         ]),
//                               //   ),
//                               // ),
//                               ),
//                         ),
//                         SizedBox(
//                           height: 75,
//                         ),
//                         Text(
//                           "Visit",
//                           style: TextStyle(
//                             fontSize: 35,
//                             color: Colors.orange,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           "Our Restaurent and get offers *",
//                           style: TextStyle(
//                             fontSize: 11,
//                             color: Colors.white,
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ]),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                         // color: Colors.red,

//                         ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             _buildOtherProduct(context),
//           ],
//         ),
//       ),
//     );
//   }
// }
