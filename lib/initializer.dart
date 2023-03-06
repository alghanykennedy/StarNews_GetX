import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Initializer {
  static Future init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
      _iniGetConnect();
    } catch (err) {
      rethrow;
    }
  }

  static Future<void> _iniGetConnect() async {
    final connect = GetConnect();
    connect.baseUrl = 'https://jsonplaceholder.typicode.com/';

    Get.put(connect);
  }
}
