// import 'package:flutter/material.dart';
// import '../../widget/single_item.dart';

// class Search extends StatelessWidget {
//   // const Search({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xff12375c),
//         title: Text("Search"),
//       ),

//       body: ListView(
//         children: [
//           ListTile(
//             title: Text('Items'),
//           ),
//           Container(
//             height: 52,
//             margin: EdgeInsets.symmetric(horizontal: 20),
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30,),
//                   borderSide: BorderSide.none,
//                 ),
//                 fillColor: Color(0xffc2c2c2),
//                 filled: true,
//                 hintText: "Search for foods",
//                 suffixIcon: Icon(Icons.search),
//               ),
//             ),
//           ),
//           SizedBox(height: 10) ,
//           SingleItem(
//             productId: '',
//                 productImage: '',
//                 productName: '',
//                 productPrice: 2,
//                 productUnit: '',
//                 onDelete: (){},
                
//             isBool: false,
//           ),
//           SizedBox(height: 10) ,
//           // SingleItem(
//           //   isBool: false,
//           // ),
//           // SizedBox(height: 10) ,
//           // SingleItem(
//           //   isBool: false,
//           // ),
//           // SizedBox(height: 10) ,
//           // SingleItem(
//           //   isBool: false,
//           // ),
        
//         ],
//       ),
//     );
//   }
// }