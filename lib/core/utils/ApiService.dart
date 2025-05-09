import 'package:dio/dio.dart';

class Apiservice {
  final _baseUrl = 'http://ma7aliapigrad.runasp.net/api/';
  final Dio dio;

  Apiservice(this.dio);

  Future<Response<dynamic>> get({required String endPoint}) async {
    var response = await dio.get(_baseUrl + endPoint);
    return response;
  }
}
