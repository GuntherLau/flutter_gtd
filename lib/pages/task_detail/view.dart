import 'package:common_ui/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TaskDetailPage extends StatefulWidget {

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  final logic = Get.find<TaskDetailLogic>();
  final state = Get.find<TaskDetailLogic>().state;
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    Get.delete<TaskDetailLogic>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
          title: Text(state.task.value == null ? 'New Task' : state.task.value!.name!),
        ),
        body: SingleChildScrollView(
          child: buildForm(context),
        )
    ));
  }

  buildForm(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIconAndName(),
                _buildIconAndColor(),
                SizedBox(height: MediaQuery.of(context).padding.bottom),
              ]
          ),
        ));
  }

  _buildIconAndName() {
    return SizedBox(
      height: 70,
      child: TextField(
        controller: logic.nameController,
        autofocus: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(.2),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50)
          ),
        ),
        // validator: (v) {
        //   return v == null || v.trim().isEmpty ? "请填写目标名称" : null;
        // },
      ),
    );
  }

  _buildIconAndColor() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () async {
              EmojiData? emoji = await showCustomEmojiPickerSheet(
                  context,
                  avatarEmoji: state.taskIcon.value,
                  avatarBackgroundColor: state.taskIconColor.value
              );
              if(emoji != null) {
                state.taskIcon.value = emoji;
              }
            },
            child: Container(
              margin: const EdgeInsets.only(right: 4),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.grey
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: state.taskIconColor.value ?? const Color(0xFFe0e0e0)
                    ),
                    child: state.taskIcon.value != null
                        ? Text(state.taskIcon.value!.char, style: const TextStyle(fontSize: 22))
                        : const SizedBox(),
                  ),
                  const Expanded(child: Text("Icon", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
        ),

        Expanded(
          child: GestureDetector(
            onTap: () {
              //  TODO
            },
            child: Container(
              margin: const EdgeInsets.only(left: 4),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.grey
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: state.taskIconColor.value ?? const Color(0xFFe0e0e0)
                    )
                  ),
                  const Expanded(child: Text("Color", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

}