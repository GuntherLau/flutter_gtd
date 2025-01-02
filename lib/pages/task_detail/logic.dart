import 'package:common/main.dart';
import 'package:common_ui/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'state.dart';

class TaskDetailLogic extends GetxController {
  final TaskDetailState state = TaskDetailState();
  final TextEditingController nameController = TextEditingController();

  @override
  void onReady() {
    if(Get.arguments != null && Get.arguments['task'] != null) {
      state.task.value = Get.arguments['task'];
    } else {
      //  default icon
      state.taskIcon.value = const EmojiData(id: '1F9ED', name: 'COMPASS', unified: '1F9ED', char: '🧭', category: 'Travel & Places', skin: 0);
      state.taskIconColor.value = "#64b5f6".color;
    }
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
