import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:starnews/app/routes/app_pages.dart';

class ListNews extends StatelessWidget {
  const ListNews(
      {super.key,
      required this.title,
      required this.description,
      required this.id});

  final String title, description, id;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DETAILNEWS, arguments: {'id': id});
        print(id);
      },
      child: Container(
        margin: EdgeInsets.all(24),
        width: Get.width * 0.9,
        decoration: BoxDecoration(
            color: Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 14,
            ),
            Text(description)
          ],
        ),
      ),
    );
  }
}
