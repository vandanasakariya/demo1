import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.w),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                          labelText: "Search Product",
                          prefixIcon: Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 3.6.h,
                  ),
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.black,
                    size: 3.6.h,
                  ),
                  
                ],
              ),
              SizedBox(height: 2.h,),
              Text("WELCOME TO ABC",style: TextStyle(fontWeight: FontWeight.bold),)

            ],
          ),
        ),
      ),
    );
  }
}
