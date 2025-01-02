

import 'package:flutter_gtd/model/tag_model.dart';
import 'package:flutter_gtd/pages/tag_list/state.dart';
import 'package:state_management/main.dart';

import '../routes/app_routes.dart';

class TagService {

  static final TagService _instance = TagService._internal();
  TagService._internal();
  static TagService get instance => _instance;

  showTags() {
    RouteService.instance.pushToView(Routes.tagList, arguments: { 'mode': TagMode.View });
  }

  chooseTags({ List<TagModel>? defaultChoose }) {
    RouteService.instance.pushToView(Routes.tagList, arguments: { 'mode': TagMode.Edit, 'defaultChoose': defaultChoose });
  }

  editTag() {

  }

}