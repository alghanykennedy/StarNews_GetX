import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starnews/app/modules/home/widget/build_list_tile_widget.dart';
import 'package:starnews/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        elevation: 0.0,
        title: Text(
          'StarNews',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Obx(() => SingleChildScrollView(
            child: Column(
              children: [
                ...homeController.listNews.reversed.map(
                  (element) => ListNews(
                    title: element.title,
                    description: element.body,
                    id: element.id.toString(),
                  ),
                )
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.FORM),
        backgroundColor: Color(0xFFD9D9D9),
        child: const Icon(Icons.add),
      ),
    );
  }
}
