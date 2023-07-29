import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/providers/order_cart_provider.dart';
import 'package:food_order_app/providers/review_cart_provider.dart';
import 'package:food_order_app/widget/single_item.dart';
import 'package:provider/provider.dart';

import 'models/order_cart_model.dart';

class OrderCart extends StatelessWidget {
  // const OrderCart({super.key});
  final String table;

  const OrderCart({Key? key, required this.table}) : super(key: key);

  showAlertDialog(BuildContext context) {
    //  String pid;
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("No"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes"),
      onPressed: () async {
        QuerySnapshot reviewCartValue = await FirebaseFirestore.instance
            .collection('OrderCart')
            .doc(FirebaseAuth.instance.currentUser?.uid)
            .collection('yourCart')
            .get();
        reviewCartValue.docs.forEach((element) {
          QuerySnapshot;
          FirebaseFirestore.instance
              .collection('OrderCart')
              .doc(FirebaseAuth.instance.currentUser?.uid)
              .collection('yourCart')
              .doc(element.get('cartId'))
              .delete();
        });

        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Delete Item"),
      content: Text("Would you like to Delete the Order Item ?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    OrderCartProvider orderCartProvider = Provider.of(context);
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    orderCartProvider.getOrderCartData();
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            'Total Amount',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(bottom: 6, left: 3),
          child: Text(
            '${orderCartProvider.getTotalPrice()} Tk',
            style: TextStyle(
              // color: Color(0xff12375c),
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Container(
            height: 300,
            width: 160,
            child: MaterialButton(
              child: Text(
                'Delete',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              color: Color(0xff12375c),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff12375c),
        centerTitle: true,
        title: Text('Order From Table'+table),
        actions: [
          // InkWell(
          //   onTap: () {
          //     showAlertDialog(context);
          //   },
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 21, right: 12),
          //     child: Text('Delete all'),
          //   ),
          // ),
        ],
      ),
      body: orderCartProvider.getOrderCartDataList.isEmpty
          ? Center(
              child: Text('No Data'),
            )
          : ListView.builder(
              itemCount: orderCartProvider.getOrderCartDataList.length,
              itemBuilder: (context, index) {
                OrderCartModel data =
                    orderCartProvider.getOrderCartDataList[index];

                return Column(
                  children: [
                    SizedBox(height: 10),
                    SingleItem(
                      productId: data.cartId,
                      productImage: data.cartImage,
                      productName: data.cartName,
                      productPrice: data.cartPrice,
                      productUnit: data.cartUnit,
                      productCount: data.cartCount,
                      isBool: false,
                    ),
                  ],
                );
              
              },
              
              // children: [
              //   SizedBox(height: 10),
              //   SingleItem(
              //     productId: ,
              //     productImage: ,
              //     productName: ,
              //     productPrice: ,
              //     productUnit: ,
              //     isBool: true,
              //   ),
              //   SizedBox(height: 10) ,
              //   // SingleItem(
              //   isBool: true,
              // ),
              // SizedBox(height: 10) ,
              // SingleItem(
              //   isBool: true,
              // ),
              // SizedBox(height: 10) ,
              // SingleItem(
              //   isBool: true,
              // ),
              // SizedBox(height: 10),
              // ],
            ),
            
            
            
    );
  }
}
