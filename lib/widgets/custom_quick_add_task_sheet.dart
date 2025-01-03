import 'package:flutter/material.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:state_management/main.dart';
import 'package:storage/main.dart';

import '../model/task.dart';

Future<void> showCustomQuickAddTaskSheet(BuildContext context) async {
  double height = 144 + MediaQuery.of(context).padding.bottom;
  await showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: height,
        child: const CustomQuickAddTaskSheet(),
      ),
    ),
  );
}

class CustomQuickAddTaskSheet extends StatefulWidget {
  const CustomQuickAddTaskSheet({super.key});

  @override
  State<CustomQuickAddTaskSheet> createState() => _CustomQuickAddTaskSheetState();
}

class _CustomQuickAddTaskSheetState extends State<CustomQuickAddTaskSheet> {
  TextEditingController taskNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final FocusNode _taskNameFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();

  bool _isTextFieldFocused = true;

  @override
  void initState() {
    super.initState();
    // 监听FocusNode的焦点变化
    _taskNameFocusNode.addListener(_handleFocusChange);
    _descriptionFocusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    // 释放FocusNode
    _taskNameFocusNode.removeListener(_handleFocusChange);
    _descriptionFocusNode.removeListener(_handleFocusChange);
    _taskNameFocusNode.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    // 如果任何一个FocusNode有焦点，就更新isTextFieldFocused状态
    setState(() {
      _isTextFieldFocused = _taskNameFocusNode.hasFocus || _descriptionFocusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              controller: taskNameController,
              focusNode: _taskNameFocusNode,
              decoration: const InputDecoration(
                hintText: 'e.g., Meeting with client',
              ),
              autofocus: true,
            ),
            TextField(
              controller: descriptionController,
              focusNode: _descriptionFocusNode,
              decoration: const InputDecoration(
                hintText: 'Description',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.save_rounded)),
                    IconButton(onPressed: () {
                      showDateRangePicker(
                          context: context,
                          locale: Get.locale,
                          firstDate: DateTime(2000, 1, 1),
                          lastDate: DateTime(2100, 12, 31),
                      );
                    }, icon: const Icon(Icons.calendar_today)),
                    IconButton(onPressed: () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                    }, icon: const Icon(Icons.more_time)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.flag)),
                  ],
                ),
                IconButton(onPressed: createTask, icon: const Icon(Icons.send)),
              ],
            ),
            // SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
            // Divider(color: Colors.grey),
            // 当没有TextField获得焦点时，显示SizedBox
            // if (!_isTextFieldFocused)
            //   SizedBox(height: MediaQuery.of(context).padding.bottom),
          ],
        ),
      ),
    );
  }

  Future<void> createTask() async {
    DateTime now = DateTime.now();
    DateTime start = DateTime(now.year, now.month, now.day, 0, 0, 0);
    DateTime end = DateTime(now.year, now.month, now.day, 23, 59, 59);
    DateTimeRange range = DateTimeRange(start: start, end: end);
    Task newTask = Task.defaultValue();
    newTask.id = await FlutterUdid.consistentUdid;
    newTask.repeatType = 0;
    newTask.name = taskNameController.text;
    newTask.createTime = range.start.millisecondsSinceEpoch;
    newTask.finishTime = range.end.millisecondsSinceEpoch;

    // newTask.name = taskNameController.text;
    // newTask.repeatType = 0;
    // newTask.jsonWeek = 'aaaa';
    // newTask.weekRandom = 0;
    // newTask.jsonMonth = 'aaa';
    // newTask.monthRandom = 0;
    // newTask.needRemind = 0;
    // newTask.alarmIndex = 0;
    // newTask.jsonRemind = 'aaaa';
    // newTask.createTime = range.start.millisecondsSinceEpoch;
    // newTask.finishTime = range.end.millisecondsSinceEpoch;
    // newTask.finishType = 0;
    // newTask.dailyTimes = 0;
    await SqliteService.instance.insert<Task>(newTask);
    RouteService.instance.popView();
  }

}
