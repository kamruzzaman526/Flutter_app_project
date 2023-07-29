import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
   late ProductModel productModel;


  /////////////////// Fast Food Provider //////////////////////////
  
  List<ProductModel> fastFoodList = [];

  fetchFirstFoodData() async {
    List<ProductModel> newList = [];

    final value = await FirebaseFirestore.instance.collection('FastFood').get();

    value.docs.forEach(
      (element) {
        // print(element.data());

        productModel = ProductModel(

         
          productImage: element.get('productImage'),
          productName: element.get('productName'),
          productPrice: element.get('productPrice'),
          productUnit: element.get('productUnit'),
          productInfo: element.get('productInfo'),
          productId: element.get('productId'),
        );
        newList.add(productModel);
        // print(element.get('productImage'));
      },
    );

    fastFoodList = newList;
    notifyListeners();
  }

  List<ProductModel> get getFirstFoodDataList {
    return fastFoodList;
  }


  ///////////////////////////////// Soft Drinks //////////////////////
  
  List<ProductModel> softDrinksList = [];

  fetchSoftDrinksData() async {
    List<ProductModel> newList = [];

    final value = await FirebaseFirestore.instance.collection('SoftDrinks').get();

    value.docs.forEach(
      (element) {
        // print(element.data());

        productModel = ProductModel(

         
          productImage: element.get('productImage'),
          productName: element.get('productName'),
          productPrice: element.get('productPrice'),
          productUnit: element.get('productUnit'),
          productInfo: element.get('productInfo'),
          productId: element.get('productId'),
        );
        newList.add(productModel);
        // print(element.get('productImage'));
      },
    );

    softDrinksList = newList;
    notifyListeners();
  }

  List<ProductModel> get getSoftDrinksDataList {
    return softDrinksList;
  }



  //////////////////////////////////////// Foods ////////////////////////////////////////

  List<ProductModel> foodsList = [];

  fetchFoodsData() async {
    List<ProductModel> newList = [];

    final value = await FirebaseFirestore.instance.collection('Foods').get();

    value.docs.forEach(
      (element) {
        // print(element.data());

        productModel = ProductModel(

         
          productImage: element.get('productImage'),
          productName: element.get('productName'),
          productPrice: element.get('productPrice'),
          productUnit: element.get('productUnit'),
          productInfo: element.get('productInfo'),
          productId: element.get('productId'),
        );
        newList.add(productModel);
        // print(element.get('productImage'));
      },
    );

    foodsList = newList;
    notifyListeners();
  }

  List<ProductModel> get getFoodsDataList {
    return foodsList;
  }


  //////////////////////////////////////////// Snacks ///////////////////////////////////////////

  List<ProductModel> snacksList = [];

  fetchSnacksData() async {
    List<ProductModel> newList = [];

    final value = await FirebaseFirestore.instance.collection('Snacks').get();

    value.docs.forEach(
      (element) {
        // print(element.data());

        productModel = ProductModel(

         
          productImage: element.get('productImage'),
          productName: element.get('productName'),
          productPrice: element.get('productPrice'),
          productUnit: element.get('productUnit'),
          productInfo: element.get('productInfo'),
          productId: element.get('productId'),
        );
        newList.add(productModel);
        // print(element.get('productImage'));
      },
    );

    snacksList = newList;
    notifyListeners();
  }

  List<ProductModel> get getSnacksDataList {
    return snacksList;
  }


  //////////////////////////////////// Others //////////////////////////////////////

  List<ProductModel> otherFoodList = [];

  fetchOtherFoodData() async {
    List<ProductModel> newList = [];

    final value = await FirebaseFirestore.instance.collection('Others').get();

    value.docs.forEach(
      (element) {
        // print(element.data());

        productModel = ProductModel(

         
          productImage: element.get('productImage'),
          productName: element.get('productName'),
          productPrice: element.get('productPrice'),
          productUnit: element.get('productUnit'),
          productInfo: element.get('productInfo'),
          productId: element.get('productId'),
        );
        newList.add(productModel);
        // print(element.get('productImage'));
      },
    );

    otherFoodList = newList;
    notifyListeners();
  }

  List<ProductModel> get getOtherFoodDataList {
    return otherFoodList;
  }



}
