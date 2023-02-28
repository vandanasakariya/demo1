import 'package:demo/first_screen/homepagecontroller.dart';
import 'package:demo/first_screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController searchController = TextEditingController();
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "WELCOME TO ABC",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 260,
                  child: PageView.builder(
                    controller: homeController.pageController,
                    onPageChanged: (value) {
                      homeController.pageSelect.value = value;
                    },
                    itemCount: 3,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("asset/image/s.jpeg"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      );
                    },
                  ),
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: homeController.pageController,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey.shade200,
                      activeDotColor: Colors.black,
                      radius: 10,
                      dotHeight: 8,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Category",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1 / 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SecondScreen();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            /* child: Image.asset("asset/image/g3.jpeg",
                                fit: BoxFit.fill),*/
                            backgroundImage: AssetImage("asset/image/g3.jpeg"),
                            radius: 50,
                            backgroundColor: Colors.grey,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text("123456")
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Brands At Good Prices",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 10),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 150,
                            width: 200,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text("min 40% off"),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            top: -20,
                            left: 28,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "asset/image/ff1.png",
                                      ),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
