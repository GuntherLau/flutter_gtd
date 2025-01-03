import 'package:flutter/cupertino.dart';
import 'package:flutter_gtd/pages/tag_list/state.dart';
import 'package:get/get.dart';

import 'state.dart';

class TagDetailLogic extends GetxController {
  final TagDetailState state = TagDetailState();
  final TextEditingController nameController = TextEditingController();
  late TagMode mode;

  @override
  void onInit() {
    mode = Get.arguments['mode'];
    if(mode == TagMode.Edit) {
      state.tag.value = Get.arguments['tag'];
      nameController.text = state.tag.value!.name!;
    }
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
