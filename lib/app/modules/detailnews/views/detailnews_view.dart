import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detailnews_controller.dart';

class DetailnewsView extends GetView<DetailnewsController> {
  final DetailnewsController detailnewsController =
      Get.put(DetailnewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        elevation: 0.0,
        title: Text(
          'Detail News',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: Get.width,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.detailNews.value.title ?? '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  controller.detailNews.value.body ?? '',
                  style: TextStyle(fontSize: 12),
                )
              ],
            )),
      ),
    );
  }
}
