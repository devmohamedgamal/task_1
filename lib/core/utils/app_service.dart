import 'package:dio/dio.dart';
import 'package:task_1/Features/home/data/models/user_model/user_model.dart';

class ApiService {
  final Dio _dio;
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  ApiService(this._dio);


  Future<List<dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
