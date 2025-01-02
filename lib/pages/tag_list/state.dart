import 'package:state_management/main.dart';

import '../../model/tag_model.dart';

enum TagMode {
  View,
  Edit
}

class TagListState {
  TagListState() {
    ///Initialize variables
  }

  final tags = <TagModel>[].obs;

}
