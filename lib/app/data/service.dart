import 'package:dio/dio.dart';

Future<void> initDio() async {
  final dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/';
  dio.options.baseUrl = url;
}
