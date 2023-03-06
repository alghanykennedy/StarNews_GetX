import 'package:get/get.dart';

import 'package:starnews/app/modules/detailnews/bindings/detailnews_binding.dart';
import 'package:starnews/app/modules/detailnews/views/detailnews_view.dart';
import 'package:starnews/app/modules/form/bindings/form_binding.dart';
import 'package:starnews/app/modules/form/views/form_view.dart';
import 'package:starnews/app/modules/home/bindings/home_binding.dart';
import 'package:starnews/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FORM,
      page: () => FormView(),
      binding: FormBinding(),
    ),
    GetPage(
      name: _Paths.DETAILNEWS,
      page: () => DetailnewsView(),
      binding: DetailnewsBinding(),
    ),
  ];
}
