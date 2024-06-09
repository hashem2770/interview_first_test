import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'http://appydev-001-site2.atempurl.com';
  final Dio _dio;

  ApiService({required Dio dio}) : _dio = dio;

  Future<List<dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data ;
  }
}