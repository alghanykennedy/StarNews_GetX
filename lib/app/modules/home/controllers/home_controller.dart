import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:starnews/app/data/news_service.dart';
import 'package:starnews/app/modules/home/models/list_news_model.dart';
import 'package:starnews/app/modules/home/views/home_view.dart';

class HomeController extends GetxController {
  final dio = Dio();
  RxBool isLoading = false.obs;
  RxList<ListNewsModel> listNews = <ListNewsModel>[].obs;
  final newsService = NewsService();

  @override
  void onInit() {
    super.onInit();
    getListNews();
  }

  getListNews() async {
    isLoading(true);
    try {
      final response = await newsService.getNews();
      response.map((v) {
        print(v);
        final news = ListNewsModel.fromJson(v);
        listNews.add(news);
      }).toList();
      isLoading(false);
    } catch (e) {
      isLoading(false);
      print(e.toString());
    }
  }
}
