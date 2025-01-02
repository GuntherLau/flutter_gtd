import 'dart:ui';

import 'package:common_ui/main.dart';
import 'package:state_management/main.dart';

import '../../model/task.dart';

class TaskDetailState {
  TaskDetailState() {
    ///Initialize variables
  }

  final task = Rx<Task?>(null);

  final taskIcon = Rx<EmojiData?>(null);
  final taskIconColor = Rx<Color?>(null);
}
