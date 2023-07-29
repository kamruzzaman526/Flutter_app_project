import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/showSnackBar.dart';

class AddData extends StatefulWidget {
  // const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  // MyFromState() {
  //   selectedValue = category[0];
  // }

  TextEditingController productImageController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productUnitController = TextEditingController();
  TextEditingController productInfoController = TextEditingController();
  TextEditingController productCategoryController = TextEditingController();
  TextEditingController productIdController = TextEditingController();

  final category = ['FastFood', 'SoftDrinks', 'Foods', 'Snacks', 'Others'];
  String selectedValue = 'FastFood';

  User? userId = FirebaseAuth.instance.currentUser;
  User? userEmail = FirebaseAuth.instance.currentUser;

  // user = FirebaseAuth.instance.currentUser;
  // print("UserId: ");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff12375c),
          title: Text('Add Data'),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                const Icon(
                  Icons.add_task_outlined,
                  size: 90,
                ),
                SizedBox(height: 20),
                Text(
                  'Let\'s Add some Food Data !',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 15),

                // DropdownButton(
                //     value: selectedValue,
                //     items: category
                //         .map((e) => DropdownMenuItem(
                //               child: Text(e),
                //               value: e,
                //             ),
                //             )
                //         .toList(),
                //     onChanged: (val) {
                //       setState(() {
                //         selectedValue = val as String;
                //       });
                //     },
                //     ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: DropdownButtonFormField(
                        
                         value: selectedValue,
                      items: category
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  e,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  ),
                                value: e,
                              ),
                              )
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedValue = val as String;
                        });
                      },
                      icon: Icon(
                        Icons.arrow_drop_down_circle,
                        // color: Colors.purple,
                        ),

                        dropdownColor: Colors.grey[200],
                        
                        decoration: InputDecoration(
                          labelText: 'Food Category',
                          border: OutlineInputBorder(),
                        ),
                        
                      ),
                    ),

                    





                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 25),
                //   child: TextFormField(
                //     controller: productCategoryController,
                //     decoration: InputDecoration(
                //       suffixIcon: Icon(Icons.text_fields),
                //       hintText: 'Category',
                //       enabledBorder: OutlineInputBorder(),
                //     ),
                //   ),
                // ),

                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: productIdController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.text_fields),
                      hintText: 'Product Id',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),


                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: productImageController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.image),
                      hintText: 'Food Image URL',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: productNameController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.text_fields),
                      hintText: 'Name',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: productPriceController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.attach_money),
                      hintText: 'Price',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: productUnitController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.text_fields),
                      hintText: 'Unit',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: productInfoController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.text_fields),
                      hintText: 'Product Info',
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                GestureDetector(
                  onTap: () async {
                    var image = productImageController.text.trim();
                    var name = productNameController.text.trim();
                    var price = int.parse(productPriceController.text);
                    var unit = productUnitController.text.trim();
                    var info = productInfoController.text.trim();
                    var collection = selectedValue;
                    var pid = productIdController.text.trim();
                    

                    if (image != "" && name != "" && price != "" && pid !="" && collection !='') {
                      try {
                        await FirebaseFirestore.instance
                            .collection(collection)
                            .doc(pid)
                            .set({
                          "productImage": image,
                          "productName": name,
                          "productPrice": price,
                          "productUnit": unit,
                          "productInfo": info,
                          "productId": pid,
                          "productCreatedAt": DateTime.now(),
                        });
                        showSnackBar(context, "Data Added Successfully !!");
                        print("Data Added");
                      } on FirebaseAuthException catch (e) {
                        showSnackBar(context, e.message!);
                      }
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Color(0xff12375c),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Add Data',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ));
  }
}
