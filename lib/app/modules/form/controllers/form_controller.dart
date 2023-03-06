import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:starnews/app/data/news_service.dart';
import 'package:starnews/app/routes/app_pages.dart';

class FormController extends GetxController {
  final cTitle = TextEditingController();
  final cDesc = TextEditingController();
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  onSubmit() async {
    isLoading(true);
    try {
      final response =
          await NewsService().postNews(title: cTitle.text, desc: cDesc.text);
      print(response);
      isLoading(false);
      Get.back();
    } catch (e) {
      isLoading(false);
    }
  }

  String? validateTitle(String value) {
    if (value.length < 5) {
      return "Title must be of 5 characters or more";
    }
    return null;
  }

  String? validateDesc(String value) {
    if (value.length < 20) {
      return "Description must be of 20 characters or more";
    }
    return null;
  }
}
