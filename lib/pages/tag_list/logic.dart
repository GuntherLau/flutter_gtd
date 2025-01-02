import 'package:get/get.dart';

import 'state.dart';

class TagListLogic extends GetxController {
  final TagListState state = TagListState();
  late TagMode mode;

  @override
  void onInit() {
    mode = Get.arguments['mode'];
    super.onInit();
  }

  @override
  void onReady() {

    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
