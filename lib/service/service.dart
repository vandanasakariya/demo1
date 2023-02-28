import 'dart:developer';

import 'package:demo/modal/demomodal.dart';
import 'package:dio/dio.dart';

class ApiService {
  static final dio = Dio();

  static Future<DemoModal?> getAllEmployees() async {
    try {
      // final response = await http.get(
      //     Uri.parse("http://practical.hostappshere.co.in/api/category"),
      //     headers: {"Connection": "keep-alive"});
      final response =
          await dio.get('http://practical.hostappshere.co.in/api/category');

      log("response---------${response}");
      return DemoModal.fromJson(response.data);
    } catch (e) {
      print("---------------$e");
    }
  }

  static Future postData() async {
    try {
      // final response = await http.get(
      //     Uri.parse("http://practical.hostappshere.co.in/api/category"),
      //     headers: {"Connection": "keep-alive"});
      final response = await dio.post(
          'http://practical.hostappshere.co.in/api/category',
          data: {"category_id": 1});

      log("response---------${response}");
      // return DemoModal.fromJson(response.data);
    } catch (e) {
      print("---------------$e");
    }
  }
}
