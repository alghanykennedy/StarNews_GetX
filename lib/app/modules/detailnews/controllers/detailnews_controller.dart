import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:starnews/app/data/news_service.dart';
import 'package:starnews/app/modules/detailnews/models/detail_news_model.dart';

class DetailnewsController extends GetxController {
  final dio = Dio();
  RxBool isLoading = false.obs;
  String id = '';
  Rx<DetailNewsModel> detailNews = DetailNewsModel().obs;
  final newsService = NewsService();
  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args['id'];
    print(args);
    getDetailNews();
  }

  getDetailNews() async {
    isLoading(true);
    try {
      final response = await newsService.getDetailNews(id: id);
      final res = DetailNewsModel.fromJson(response);
      detailNews(res);
    } catch (e) {
      isLoading(false);
      print(e);
      Get.snackbar('Error', e.toString());
    }
  }
}
