import 'package:flutter/material.dart';

class ReviewCount extends StatefulWidget {
  // const ReviewCount({super.key});

  @override
  State<ReviewCount> createState() => _ReviewCountState();
}

class _ReviewCountState extends State<ReviewCount> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 6,right: 6),
      height: 28,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                if(count !=1){
                  setState(() {
                  count--;
                  print(count);
                });
                }else{

                }
                
                // print(count);
              },
              child: Text(
                '-',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '$count',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  count++;
                });
                // count -= 1;
              },
              child: Text(
                '+',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
