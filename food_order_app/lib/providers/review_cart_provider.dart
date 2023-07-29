import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/review_cart_model.dart';

////////////////////// Add review cart data to firebase //////////////

class ReviewCartProvider with ChangeNotifier {
  void addReviewCartData({
    required String cartId,
    required String cartName,
    required String cartImage,
    required int cartPrice,
    required String cartUnit,
    required int cartCount,
  }) async {
    FirebaseFirestore.instance
        .collection('ReviewCart')
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

  void updateReviewCartData({
    required String cartId,
    required String cartName,
    required String cartImage,
    required int cartPrice,
    required String cartUnit,
    required int cartCount,
  }) async {
    FirebaseFirestore.instance
        .collection('ReviewCart')
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

  ///////////////////////////  Fetch Data to Review cart from Firebase ////////////////////

  List<ReviewCartModel> reviewCartDataList = [];

  void getReviewCartData() async {
    List<ReviewCartModel> newList = [];

    QuerySnapshot reviewCartValue = await FirebaseFirestore.instance
        .collection('ReviewCart')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection('yourCart')
        .get();
    reviewCartValue.docs.forEach((element) {
      ReviewCartModel reviewCartModel = ReviewCartModel(
        cartId: element.get('cartId'),
        cartImage: element.get('cartImage'),
        cartName: element.get('cartName'),
        cartPrice: element.get('cartPrice'),
        cartUnit: element.get('cartUnit'),
        cartCount: element.get('cartCount'),
      );
      newList.add(reviewCartModel);
    });
    reviewCartDataList = newList;
    notifyListeners();
  }

  List<ReviewCartModel> get getReviewCartDataList {
    return reviewCartDataList;
  }

  /////////////////////////// Delete review cart data from firebase /////////////

  reviewCartDataDelete(cartId) {
    FirebaseFirestore.instance
        .collection('ReviewCart')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .collection('yourCart')
        .doc(cartId)
        .delete();
    notifyListeners();
  }

  ///////////////  Calculate total Price ///////////////////////

  getTotalPrice() {
    double total = 0.0;
    reviewCartDataList.forEach((element) {
      total += element.cartPrice * element.cartCount;
      // print(element.cartPrice);
    });
    return total;
  }


   void addOrderCartData({
    required String cartId,
    required String cartName,
    required String cartImage,
    required int cartPrice,
    required String cartUnit,
    required int cartCount,
  }) async {
    FirebaseFirestore.instance
        .collection('ReviewCart')
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



  



}

