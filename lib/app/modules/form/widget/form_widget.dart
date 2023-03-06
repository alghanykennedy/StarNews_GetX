import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starnews/app/modules/form/controllers/form_controller.dart';
import 'package:starnews/app/routes/app_pages.dart';

class FormWidget extends GetView<FormController> {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: ListView(
        children: [
          Text('Judul'),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller.cTitle,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: 'Title Here...',
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xff535FF7), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0))),
            validator: (value) {
              return controller.validateTitle(value!);
            },
          ),
          const SizedBox(
            height: 28,
          ),
          Text('Content Article'),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller.cDesc,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: 'Description Here...',
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xff535FF7), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0))),
            validator: (value) {
              return controller.validateDesc(value!);
            },
          ),
          const SizedBox(
            height: 400,
          ),
          Obx(() => InkWell(
                onTap: () =>
                    controller.isLoading.value ? null : controller.onSubmit(),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xFFFD9D9D9),
                  ),
                  child: Center(
                    child: controller.isLoading.value
                        ? CircularProgressIndicator()
                        : Text(
                            "Post",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
