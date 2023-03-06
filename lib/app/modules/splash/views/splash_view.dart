import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: Get.width * 0.5,
            height: Get.height * 0.5,
            child: SvgPicture.asset("assets/logo/logo-splash.svg"),
          ),
        ),
      ),
    );
  }
}
