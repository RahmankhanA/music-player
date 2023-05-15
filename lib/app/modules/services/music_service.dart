import 'package:dio/dio.dart';

class MusicApi {
  final url =
      'https://raw.githubusercontent.com/asv0018/asv0018/master/main.json';
  final _dio = Dio();

 Future<Response> getMusicList() async {

   return await _dio.get(url);
  }
}
