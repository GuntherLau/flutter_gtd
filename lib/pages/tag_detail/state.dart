import 'package:flutter_gtd/model/tag_model.dart';
import 'package:state_management/main.dart';

class TagDetailState {
  TagDetailState() {
    ///Initialize variables
  }

  final tag = Rx<TagModel?>(null);
}
