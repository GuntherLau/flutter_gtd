
import 'package:flutter_gtd/routes/app_routes.dart';
import 'package:state_management/main.dart';

import '../model/task.dart';

class TaskService {

  static final TaskService _instance = TaskService._internal();
  TaskService._internal();
  static TaskService get instance => _instance;

  createNewTask() {
    RouteService.instance.pushToView(Routes.taskDetail);
  }

  editTask(Task task) {
    RouteService.instance.pushToView(Routes.taskDetail, arguments: {'task': task});
  }

}