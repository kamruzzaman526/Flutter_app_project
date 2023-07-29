import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/models/review_cart_model.dart';
import 'package:food_order_app/order_cart.dart';
import 'package:food_order_app/pages/home_screen.dart';
import 'package:food_order_app/providers/review_cart_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../utils/showSnackBar.dart';
import '../widget/single_item.dart';

class ReviewCart extends StatelessWidget {
  final String table;

  const ReviewCart({Key? key, required this.table}) : super(key: key);

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
            .collection('ReviewCart')
            .doc(FirebaseAuth.instance.currentUser?.uid)
            .collection('yourCart')
            .get();
        reviewCartValue.docs.forEach((element) {
          QuerySnapshot;
          FirebaseFirestore.instance
              .collection('ReviewCart')
              .doc(FirebaseAuth.instance.currentUser?.uid)
              .collection('yourCart')
              .doc(element.get('cartId'))
              .delete();
          // print(element.get('cartId'));
        });

        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Delete Item"),
      content: Text("Would you like to Delete the Cart Item ?"),
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
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    reviewCartProvider.getReviewCartData();

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
            '${reviewCartProvider.getTotalPrice()} Tk',
            style: TextStyle(
              color: Colors.pink,
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
                'Order',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () async{
                showSnackBar(context, "Order Created from tabel" + table);
                OrderCart(table: table);
                Get.to(() => HomeScreen(table: table));

                QuerySnapshot reviewCartValue = await FirebaseFirestore.instance
            .collection('ReviewCart')
            .doc(FirebaseAuth.instance.currentUser?.uid)
            .collection('yourCart')
            .get();
        reviewCartValue.docs.forEach((element) {
          QuerySnapshot;
          FirebaseFirestore.instance
              .collection('ReviewCart')
              .doc(FirebaseAuth.instance.currentUser?.uid)
              .collection('yourCart')
              .doc(element.get('cartId'))
              .delete();
          // print(element.get('cartId'));
        });



              },
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        // centerTitle: true,
        title: Text('Review Cart   T- ' + table),

        actions: [
          InkWell(
            onTap: () {
              showAlertDialog(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 21, right: 12),
              child: Text('Delete all'),
            ),
          ),
        ],
      ),
      body: reviewCartProvider.getReviewCartDataList.isEmpty
          ? Center(
              child: Text('No Data'),
            )
          : ListView.builder(
              itemCount: reviewCartProvider.getReviewCartDataList.length,
              itemBuilder: (context, index) {
                ReviewCartModel data =
                    reviewCartProvider.getReviewCartDataList[index];

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
                      isBool: true,
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
