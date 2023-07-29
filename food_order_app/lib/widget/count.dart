import 'package:flutter/material.dart';
import 'package:food_order_app/providers/review_cart_provider.dart';
import 'package:provider/provider.dart';


import '../providers/order_cart_provider.dart';

class Count extends StatefulWidget {
  // const Count({super.key});

  final String productId;
  final String productImage;
  final String productName;
  final int productPrice;
  final String productUnit;
  final int productCount;

  Count({
    required this.productId,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productUnit,
    required this.productCount,
  });

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    // print(widget.productId);

    ReviewCartProvider reviewCartProvider = Provider.of(context);
    OrderCartProvider orderCartProvider = Provider.of(context);

    return Expanded(
      child: isTrue == false
          ? Container(
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        isTrue = true;
                      });

                       reviewCartProvider.addReviewCartData(
                        cartId: widget.productId,
                        cartImage: widget.productImage,
                        cartName: widget.productName,
                        cartPrice: widget.productPrice,
                        cartUnit: widget.productUnit,
                        cartCount: widget.productCount,
                      );
                   

                      orderCartProvider.addOrderCartData(
                        cartId: widget.productId,
                        cartImage: widget.productImage,
                        cartName: widget.productName,
                        cartPrice: widget.productPrice,
                        cartUnit: widget.productUnit,
                        cartCount: widget.productCount,
                      );


                      



                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                        // fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffd1ad17),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Container(
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        isTrue = false;
                      });

                     
                    },
                    child: Text(
                      'Added',
                      style: TextStyle(
                        // fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffd1ad17),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
