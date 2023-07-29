import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/order_cart_model.dart';

////////////////////// Add review cart data to firebase //////////////

class OrderCartProvider with ChangeNotifier {
  void addOrderCartData({
    required String cartId,
    required String cartName,
    required String cartImage,
    required int cartPrice,
    required String cartUnit,
    required int cartCount,
  }) async {
    FirebaseFirestore.instance
        .collection('OrderCart')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection('yourCart')
        .doc(cartId)
        .set(
      {
        'cartId': cartId,
        'cartName': cartName,
        'cartImage': cartImage,
        'cartPrice': cartPrice,
        'cartUnit': cartUnit,
        'cartCount': 1,
      },
    );
  }

////////////////////////////////////// Update data //////////////

  void updateOrderCartData({
    required String cartId,
    required String cartName,
    required String cartImage,
    required int cartPrice,
    required String cartUnit,
    required int cartCount,
  }) async {
    FirebaseFirestore.instance
        .collection('OrderCart')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection('yourCart')
        .doc(cartId)
        .update(
      {
        'cartId': cartId,
        'cartName': cartName,
        'cartImage': cartImage,
        'cartPrice': cartPrice,
        'cartUnit': cartUnit,
        'cartCount': cartCount,
      },
    );
  }

  // ///////////////////////////  Fetch Data to Review cart from Firebase ////////////////////

  List<OrderCartModel> orderCartDataList = [];

  void getOrderCartData() async {
    List<OrderCartModel> newList = [];

    QuerySnapshot orderCartValue = await FirebaseFirestore.instance
        .collection('OrderCart')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection('yourCart')
        .get();
    orderCartValue.docs.forEach((element) {
      OrderCartModel orderCartModel = OrderCartModel(
        cartId: element.get('cartId'),
        cartImage: element.get('cartImage'),
        cartName: element.get('cartName'),
        cartPrice: element.get('cartPrice'),
        cartUnit: element.get('cartUnit'),
        cartCount: element.get('cartCount'),
      );
      newList.add(orderCartModel);
    });
    orderCartDataList = newList;
    notifyListeners();
  }

  List<OrderCartModel> get getOrderCartDataList {
    return orderCartDataList;
  }

  ///////////////  Calculate total Price ///////////////////////

  getTotalPrice() {
    double total = 0.0;
    orderCartDataList.forEach((element) {
      total += element.cartPrice * element.cartCount;
      // print(element.cartPrice);
    });
    return total;
  }
  


}
