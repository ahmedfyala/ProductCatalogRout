import 'dart:js_interop_unsafe';

import 'package:dio/dio.dart';
import 'package:task1_rout/core/utilis/api_constance.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String url}) async {
    var response = await dio.get(ApiConstance.apiUrl);
    return response.data;
  }
}
