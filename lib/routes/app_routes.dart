

import 'package:flutter_gtd/pages/tag_list/binding.dart';
import 'package:flutter_gtd/pages/tag_list/view.dart';
import 'package:get/get.dart';
import 'package:state_management/main.dart';

import '../pages/main/binding.dart';
import '../pages/main/view.dart';
import '../pages/task_detail/binding.dart';
import '../pages/task_detail/view.dart';

class Routes extends AppRoutes {

  static const String splash = "/framework_splash";
  static const String main = "/main";
  static const String taskDetail = "/task/detail";
  static const String tagList = "/tag/list";

  @override
  String get initialRoute => "/main";

  @override
  List<GetPage> getPages() {
    return [
      GetPage(name: main, page: () => const MainPage(), binding: MainBinding()),
      GetPage(name: taskDetail, page: () => TaskDetailPage(), binding: TaskDetailBinding()),
      GetPage(name: tagList, page: () => const TagListPage(), binding: TagListBinding()),
    ];
  }

}