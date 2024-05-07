
import 'package:dio/dio.dart';

class ApiServices {
  Dio dio;

  ApiServices({required this.dio});


   void init() {
    dio = Dio(
      BaseOptions(
          baseUrl:'',
          receiveDataWhenStatusError: true,
          headers: {'Content-Type': 'application/json'}),
    );
  }


//////////////////////////////////////////////////////////
  Future<Response> getData({
    required String urll,
    Map<String, dynamic>? queries,
    Map<String, dynamic>? data,
  }) async {
    return await dio.get(urll, queryParameters: queries, data: data);
  }
  ////////////////////////////////////////////////////////

  Future<Response> postData({
    required String urll,
    required Map<String, dynamic> data,
    Map<String, dynamic>? queries,
  }) async {
    return await dio.post(urll, data: data);
  }

  Future<Response> patchData({
    required String urll,
    required Map<String, dynamic> data,
    Map<String, dynamic>? queries,
  }) async {
    return await dio.patch(
      urll,
      data: data,
    );
  }

  Future<Response> deleteData({
    required String urll,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queries,
  }) async {
    return await dio.delete(urll, data: data);
  }
}
