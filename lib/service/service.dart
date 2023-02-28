import 'dart:convert';
import 'dart:developer';

import 'package:demo/modal/demomodal.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static final dio = Dio();

  static Future<DemoModal?> getdatameth() async {
    try {
      var headers = {'Content-Type': 'application/x-www-form-urlencoded'};

      const url = "http://practical.hostappshere.co.in/api/category";
      final response = await http.get(Uri.parse(url), headers: headers);
      log("response---------${response}");
      return DemoModal.fromJson(json.decode(response.body));
    } catch (e) {
      print("eeee------------$e");
    }

    // var request = http.Request(
    //     'GET', Uri.parse('http://practical.hostappshere.co.in/api/category'));
    // request.bodyFields = {'category_id': '1'};
    // request.headers.addAll(headers);
    //
    // http.StreamedResponse response = await request.send();
    //
    // if (response.statusCode == 200) {
    //   print(await response.stream.bytesToString());
    // } else {
    //   print(response.reasonPhrase);
    // }
  }

  /*static Future<DemoModal?> getAllEmployees() async {
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
  }*/
}
