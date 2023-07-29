import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fetchData extends StatefulWidget {
  // const fetchData({super.key});
  

  @override
  State<fetchData> createState() => _fetchDataState();
}

class _fetchDataState extends State<fetchData> {
  User? userId = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data fetching"),
      ),
      body: Container(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("FastFood")
              .where("Name", isEqualTo: "Banana")
              .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text("Something went wrong");
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CupertinoActivityIndicator());
            }

            if (snapshot.data!.docs.isEmpty) {
              return Text("No data found ");
            }

            if (snapshot != null && snapshot.data != null) {
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, Index) {
                    

                    var image = snapshot.data!.docs[Index]['Image'];
                    var name = snapshot.data!.docs[Index]['Name'];
                    var price = snapshot.data!.docs[Index]['Price'];
                    var unit = snapshot.data!.docs[Index]['Unit'];

                    // return Column(
                    //   children: [
                    //     Text(image),
                    //     Text(name),
                    //     Text(price),
                    //     Text(unit),
                        
                    //   ],
                    // );

                    return Column(
                      children: [
                        Container(
                          child: Image.network(snapshot.data!.docs[Index]['Image']),
                        
                        ),
                      ],
                    );
                  });
            }

            return Container();
          },
        ),
      ),
    );
  }
}
