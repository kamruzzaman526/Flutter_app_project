// import 'package:flutter/material.dart';
// import 'package:food_app/config/colors.dart';
// import 'package:food_app/models/product_model.dart';
// import 'package:food_app/widgets/count.dart';
// import 'package:food_app/widgets/product_unit.dart';

// class SingalProduct extends StatefulWidget {
//   final String productImage;
//   final String productName;
//   final int productPrice;
//   final Function onTap;
//   final String productId;
//   final ProductModel productUnit;
//   SingalProduct(
//       {this.productId,
//       this.productImage,
//       this.productName,
//       this.productUnit,
//       this.onTap,
//       this.productPrice});

//   @override
//   _SingalProductState createState() => _SingalProductState();
// }

// class _SingalProductState extends State<SingalProduct> {
//   var unitData;
//   var firstValue;
//   @override
//   Widget build(BuildContext context) {
//     widget.productUnit.productUnit.firstWhere((element) {
//       setState(() {
//         firstValue = element;
//       });
//       return true;
//     });
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
//                   onTap: widget.onTap,
//                   child: Container(
//                     height: 150,
//                     padding: EdgeInsets.all(5),
//                     width: double.infinity,
//                     child: Image.network(
//                       widget.productImage,
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
//                           widget.productName,
//                           style: TextStyle(
//                             color: textColor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           '${widget.productPrice}\$/${unitData == null?firstValue:unitData}',
//                           style: TextStyle(
//                             color: Colors.grey,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: ProductUnit(
//                                 onTap: () {
//                                   showModalBottomSheet(
//                                       context: context,
//                                       builder: (context) {
//                                         return Column(
//                                           mainAxisSize: MainAxisSize.min,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: widget
//                                               .productUnit.productUnit
//                                               .map<Widget>((data) {
//                                             return Column(
//                                               children: [
//                                                 Padding(
//                                                   padding: const EdgeInsets
//                                                           .symmetric(
//                                                       vertical: 10,
//                                                       horizontal: 10),
//                                                   child: InkWell(
//                                                     onTap: () async {
//                                                       setState(() {
//                                                         unitData = data;
//                                                       });
//                                                       Navigator.of(context)
//                                                           .pop();
//                                                     },
//                                                     child: Text(
//                                                       data,
//                                                       style: TextStyle(
//                                                           color: primaryColor,
//                                                           fontSize: 18),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             );
//                                           }).toList(),
//                                         );
//                                       });
//                                 },
//                                 title: unitData == null?firstValue:unitData,
//                               ),
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Count(
//                               productId: widget.productId,
//                               productImage: widget.productImage,
//                               productName: widget.productName,
//                               productPrice: widget.productPrice,
//                               productUnit: unitData == null?firstValue:unitData,
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

// --------------------------

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/admin/admin_home.dart';


// import 'package:food_app/config/colors.dart';
import 'package:food_order_app/pages/product_overview.dart';
import 'package:get/get.dart';

// import '../../config/colors.dart';

// import '../productOverView/product_overview.dart';
// import '../widget/count.dart';
import '../widget/count.dart';
import 'colors.dart';

class SingalProduct extends StatelessWidget {

  final String productId;
  final String productImage;
  final String productName;
  final int productPrice;
  final String productUnit;
  final void Function()? onTap;

  SingalProduct({
    required this.productId,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productUnit,
    required this.onTap,
  });
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
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
                  child: GestureDetector(
                    onTap: onTap,
                    child: Center(
                      child: Image.network(productImage),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 'Burger',
                          productName,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '$productPrice',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              ' / ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              productUnit,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      productUnit,
                                      style: TextStyle(
                                        // fontSize: 11,
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5),

                            Count(
                              productId: productId,
                              productImage: productImage,
                              productName: productName,
                              productPrice: productPrice,
                              productUnit: productUnit, 
                              productCount: 1,
                              

                            ),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
