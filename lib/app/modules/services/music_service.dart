import 'dart:developer';

import 'package:dio/dio.dart';

class MusicApi {
  final url =
      'https://raw.githubusercontent.com/asv0018/asv0018/master/main.json';
  final _dio = Dio();

  Future<Response> getMusicList() async {
    Response res;
    try {
      res = await _dio.get(
        url,
        options: Options(
          sendTimeout: const Duration(seconds: 25),
          receiveTimeout: const Duration(seconds: 25),
        ),
      );
    } on DioError catch (err) {
      res = Response(requestOptions: RequestOptions());
      res.statusCode=404;
      log("DIO err : $err");
    } catch (err) {
      log('error ----> $err');
      res = Response(requestOptions: RequestOptions());
      res.statusCode = 404;
    }
    return res;
  }
}
