

import 'dart:convert';

import 'package:flutter_gtd/model/tag_model.dart';
import 'package:flutter_gtd/pages/tag_list/state.dart';
import 'package:state_management/main.dart';
import 'package:storage/main.dart';

import '../routes/app_routes.dart';

class TagService {

  static final TagService _instance = TagService._internal();
  TagService._internal();
  static TagService get instance => _instance;
  final List<TagModel> _defaultTags = [
    TagModel(name: 'Leisure', color: 'FF0000', checked: 0),
    TagModel(name: 'Work', color: '00FF00', checked: 0),
    TagModel(name: 'Personal', color: '0000FF', checked: 0),
    TagModel(name: 'Shopping', color: 'FFFF00', checked: 0),
    TagModel(name: 'Health', color: '00FFFF', checked: 0),
    TagModel(name: 'Home', color: 'FF00FF', checked: 0),
    TagModel(name: 'Finance', color: 'FFA500', checked: 0),
    TagModel(name: 'Travel', color: '800080', checked: 0),
    TagModel(name: 'Study', color: '008080', checked: 0),
    TagModel(name: 'Others', color: '808080', checked: 0),
  ];

  goShowTagsPage() {
    RouteService.instance.pushToView(Routes.tagList, arguments: { 'mode': TagMode.View });
  }

  goChooseTagsPage({ List<TagModel>? defaultChoose }) {
    RouteService.instance.pushToView(Routes.tagList, arguments: { 'mode': TagMode.Edit, 'defaultChoose': defaultChoose });
  }

  goCreateTagPage() {
    RouteService.instance.pushToView(Routes.tagDetail, arguments: { 'mode': TagMode.Edit });
  }

  goEditTagPage(TagModel tag) {
    RouteService.instance.pushToView(Routes.tagDetail, arguments: { 'mode': TagMode.Edit, 'tag': tag });
  }

  List<TagModel> getTags() {
    List<String> spTags = SpService.instance.getStringList('tags');
    if(spTags.isNotEmpty) {
      return spTags.map((e) => TagModel.fromJson(jsonDecode(e))).toList();
    } else {
      return _defaultTags;
    }
  }

  void saveOrUpdateTag(TagModel tag) {
    List<TagModel> tags = getTags();
    if(tags.any((element) => element.name == tag.name)) {
      tags.removeWhere((element) => element.name == tag.name);
    }
    tags.add(tag);
    SpService.instance.setStringList('tags', tags.map((e) => jsonEncode(e.toJson())).toList());
  }

  void removeTag(TagModel tag) {
    List<TagModel> tags = getTags();
    tags.removeWhere((element) => element.name == tag.name);
    SpService.instance.setStringList('tags', tags.map((e) => jsonEncode(e.toJson())).toList());
  }

}