import 'package:common/main.dart';
import 'package:json_annotation/json_annotation.dart';

import '../main.dart';
part 'tag_model.g.dart';

@reflectorModel
@JsonSerializable()
class TagModel {

  String? name;
  String? color;
  int? checked;

  TagModel({
    this.name,
    this.color,
    this.checked
  });

  factory TagModel.fromJson(Map<String, dynamic> json) => _$TagModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TagModelToJson(this);

}