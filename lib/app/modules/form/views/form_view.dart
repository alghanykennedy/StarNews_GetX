import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starnews/app/modules/form/widget/form_widget.dart';

import '../controllers/form_controller.dart';

class FormView extends GetView<FormController> {
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
          'StarNews',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FormWidget(),
    );
  }
}
