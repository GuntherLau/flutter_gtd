import 'package:get/get.dart';

import 'logic.dart';

class TagListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TagListLogic());
  }
}
