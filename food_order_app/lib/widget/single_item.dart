import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/pages/count.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../models/review_cart_model.dart';
import '../pages/review_count.dart';
import '../providers/order_cart_provider.dart';
import '../providers/review_cart_provider.dart';
import '../utils/showSnackBar.dart';

class SingleItem extends StatefulWidget {
  // const SearchItem({super.key});
  bool isBool = false;
  final String productId;
  final String productImage;
  final String productName;
  final int productPrice;
  final String productUnit;
  final int productCount;
  // final Function onTap;

  SingleItem({
    Key? key,
    required this.isBool,
    required this.productId,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productUnit,
    required this.productCount,
    // required this.onTap,
  }) : super(key: key);

  @override
  State<SingleItem> createState() => _SingleItemState();
}

class _SingleItemState extends State<SingleItem> {
  //  final bool isBool;
  int count = 1;
  // late ReviewCartProvider reviewCartProvider;

  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    OrderCartProvider orderCartProvider = Provider.of(context);
    reviewCartProvider.getReviewCartData();
    orderCartProvider.getOrderCartData();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 90,
                  child: Center(
                    child: Image.network(
                      // 'https://www.pngmart.com/files/16/Bread-Cheese-Sandwich-PNG-Transparent-Image.png'
                      widget.productImage,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Container(
                    height: 90,
                    child: Column(
                      mainAxisAlignment: widget.isBool == true
                          ? MainAxisAlignment.spaceAround
                          : MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.productName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                // fontSize: 17,
                              ),
                            ),
                            Text(
                              '${widget.productPrice} Tk',
                              style: TextStyle(
                                color: Colors.grey,
                                // fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        widget.isBool == false
                            ? Container(
                                margin: EdgeInsets.only(right: 15),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      widget.productUnit,
                                    )
                                  ],
                                ),
                              )
                            : Text(widget.productUnit),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    height: 100,
                    padding: widget.isBool == false
                        ? EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                        : EdgeInsets.only(left: 15, right: 15),
                    child: widget.isBool == false
                        ? Container(
                            height: 55,
                            width: 23,
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.grey),
                            //   borderRadius: BorderRadius.circular(30),
                            // ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Icon(
                                  //   Icons.add,
                                  //   size: 20,
                                  // ),
                                  Text(
                                    'Quantity',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 2),

                                  Text(
                                     '${widget.productCount}',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SizedBox(height: 10),
                              // InkWell(
                              //   // onTap: onTap(),
                              //   onTap: () {
                              //     // var delete = delete();
                              //     showAlertDialog(context);
                              //   },
                              //   child: Icon(
                              //     Icons.delete,
                              //     size: 30,
                              //     color: Colors.black,
                              //   ),
                              // ),
                              SizedBox(height: 10),

                              Container(
                                // margin: EdgeInsets.only(left: 6,right: 6),
                                height: 28,
                                width: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          if (count != 1) {
                                            setState(() {
                                              count--;
                                              print(count);
                                            });
                                            reviewCartProvider
                                                .updateReviewCartData(
                                                    cartId: widget.productId,
                                                    cartName: widget.productName,
                                                    cartImage: widget.productImage,
                                                    cartPrice: widget.productPrice,
                                                    cartUnit: widget.productUnit,
                                                    cartCount: count,
                                                    );

                                                     orderCartProvider
                                                .updateOrderCartData(
                                                    cartId: widget.productId,
                                                    cartName: widget.productName,
                                                    cartImage: widget.productImage,
                                                    cartPrice: widget.productPrice,
                                                    cartUnit: widget.productUnit,
                                                    cartCount: count,
                                                    );


                                          }
                                          if (count == 1) {
                                            showSnackBar(context,
                                                "You reach the Minimum limit");
                                            //  setState(() {
                                            //   count++;
                                            //   // print(count);
                                            // });
                                          }

                                          // print(count);
                                        },

                                      

                                        child: Text(
                                          '-',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        '${widget.productCount}',
                                        // '$count',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          if (count <= 4) {
                                            setState(() {
                                              count++;
                                            });
                                            reviewCartProvider
                                                .updateReviewCartData(
                                                    cartId: widget.productId,
                                                    cartName: widget.productName,
                                                    cartImage: widget.productImage,
                                                    cartPrice: widget.productPrice,
                                                    cartUnit: widget.productUnit,
                                                    cartCount: count,
                                                    );

                                                orderCartProvider
                                                .updateOrderCartData(
                                                    cartId: widget.productId,
                                                    cartName: widget.productName,
                                                    cartImage: widget.productImage,
                                                    cartPrice: widget.productPrice,
                                                    cartUnit: widget.productUnit,
                                                    cartCount: count,
                                                    );
                                          } else {
                                            showSnackBar(context,
                                                "You reach the Maximum limit");
                                          }
                                        },
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
              ),
            ],
          ),
        ),
        widget.isBool == false
            ? Container()
            : Divider(
                height: 0.5,
                color: Colors.black,
              ),
      ],
    );
  }
}
