import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starnews/app/modules/splash/views/splash_view.dart';
import 'package:starnews/initializer.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  await Initializer.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            );
          }
        });
  }
}
