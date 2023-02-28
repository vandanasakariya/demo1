import 'package:demo/service/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt pageSelect = 0.obs;
  // MusicList musicList = MusicList();
  final pageController = PageController(initialPage: 0);
  @override
  void onInit() {
    ApiService.getAllEmployees();
    super.onInit();
  }
}
