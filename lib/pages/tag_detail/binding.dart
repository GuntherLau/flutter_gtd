import 'package:get/get.dart';

import 'logic.dart';

class TagDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TagDetailLogic());
  }
}
