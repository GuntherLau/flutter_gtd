import 'dart:convert';

import 'package:flutter_gtd/services/tag_service.dart';
import 'package:get/get.dart';
import 'package:storage/main.dart';

import '../../model/tag_model.dart';
import 'state.dart';

class TagListLogic extends GetxController {
  final TagListState state = TagListState();
  late TagMode mode;

  @override
  void onInit() {
    mode = Get.arguments['mode'];
    state.tags.value = [...TagService.instance.getTags()];
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
