import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        padding: EdgeInsets.only(top: 10, left: 8, right: 8),
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.5,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade500,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade500,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(
                            "asset/image/j6.jpeg",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text("asdasdada"),
                  Row(
                    children: [
                      Text("₹ 599"),
                      Text("₹ 599"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
