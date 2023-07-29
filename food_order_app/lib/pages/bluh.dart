// import 'package:flutter/material.dart';

// import 'package:food_app/config/colors.dart';

// import '../../config/colors.dart';

// import '../productOverView/product_overview.dart';

 

// class SingalProduct extends StatelessWidget {

//   final String productImage;

//   final String productName;

//   final Function onTap;

 

//   SingalProduct({

//     required this.productImage,

//     required this.productName,

//     required this.onTap,

//   });

 

//   @override

//   Widget build(BuildContext context) {

//     return SingleChildScrollView(

//       scrollDirection: Axis.horizontal,

//       child: Row(

//         children: [

//           Container(

//             margin: EdgeInsets.only(right: 10),

//             height: 230,

//             width: 165,

//             decoration: BoxDecoration(

//               color: Color(0xffd9dad9),

//               borderRadius: BorderRadius.circular(10),

//             ),

//             child: Column(

//               crossAxisAlignment: CrossAxisAlignment.start,

//               children: [

//                 GestureDetector(
//                   onTap: (){Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => ProductOverview(),
//                     ),
//                   );
//                   },

//                   child: Container(

//                     height: 150,

//                     padding: EdgeInsets.all(5),

//                     width: double.infinity,

//                     child: Image.network(

//                       productImage,

//                     ),

//                   ),

//                 ),

//                 Expanded(

//                   flex: 2,

//                   child: Padding(

//                     padding:

//                         const EdgeInsets.symmetric(horizontal: 10, vertical: 5),

//                     child: Column(

//                       crossAxisAlignment: CrossAxisAlignment.start,

//                       children: [

//                         Text(

//                           productName,

//                           style: TextStyle(

//                             color: textColor,

//                             fontWeight: FontWeight.bold,

//                           ),

//                         ),

//                         Text(

//                           '50\$50 Gram',

//                           style: TextStyle(color: Colors.grey),

//                         ),

//                         SizedBox(

//                           height: 5,

//                         ),

//                         Row(

//                           children: [

//                             Expanded(

//                               child: Container(

//                                 padding: EdgeInsets.only(left: 5),

//                                 height: 25,

//                                 decoration: BoxDecoration(

//                                   border: Border.all(

//                                     color: Colors.grey,

//                                   ),

//                                   borderRadius: BorderRadius.circular(8),

//                                 ),

//                                 child: Row(

//                                   children: [

// // Quantity

//                                     Expanded(

//                                         child: Text(

//                                       '50 Gram',

//                                       style: TextStyle(fontSize: 10),

//                                     )),

 

// // Arrow

//                                     Center(

//                                       child: Icon(

//                                         Icons.arrow_drop_down,

//                                         size: 19,

//                                         color: Colors.brown,

//                                       ),

//                                     ),

//                                   ],

//                                 ),

//                               ),

//                             ),

 

// //This Is Second Rectangular Container

//                             SizedBox(

//                               width: 5,

//                             ),

 

//                             Container(

//                               height: 25,

//                               width: 50,

//                               decoration: BoxDecoration(

//                                 border: Border.all(

//                                   color: Colors.grey,

//                                 ),

//                                 borderRadius: BorderRadius.circular(8),

//                               ),

//                               child: Row(

//                                 mainAxisAlignment:

//                                     MainAxisAlignment.spaceEvenly,

//                                 children: [

//                                   Icon(

//                                     Icons.remove,

//                                     size: 15,

//                                     color: primaryColor,

//                                   ),

//                                   Text(

//                                     "1",

//                                     style: TextStyle(

//                                         color: Colors.brown,

//                                         fontWeight: FontWeight.bold),

//                                   ),

//                                   Icon(

//                                     Icons.add,

//                                     size: 15,

//                                   ),

//                                 ],

//                               ),

//                             ),

//                           ],

//                         ),

//                       ],

//                     ),

//                   ),

//                 ),

//               ],

//             ),

//           ),

//         ],

//       ),

//     );

//   }

// }





import 'package:flutter/material.dart';

class BottomNavBarV2 extends StatefulWidget {
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(55),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                // overflow: Overflow.visible,
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(backgroundColor: Colors.orange, child: Icon(Icons.shopping_basket), elevation: 0.1, onPressed: () {}),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            color: currentIndex == 0 ? Colors.orange : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.restaurant_menu,
                              color: currentIndex == 1 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(1);
                            }),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.bookmark,
                              color: currentIndex == 2 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(2);
                            }),
                        IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: currentIndex == 3 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(3);
                            }),
                      ],
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

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}