import 'package:common_ui/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gtd/widgets/custom_tag_tile_widget.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class TagListPage extends StatefulWidget {
  const TagListPage({super.key});

  @override
  State<TagListPage> createState() => _TagListPageState();
}

class _TagListPageState extends State<TagListPage> {
  final logic = Get.find<TagListLogic>();
  final state = Get.find<TagListLogic>().state;

  @override
  void dispose() {
    Get.delete<TagListLogic>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appBarTitleText: 'Tags'),
      body: Stack(alignment: AlignmentDirectional.center, children: [
        Positioned.fill(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return CustomTagTileWidget(
                    model: state.tags[index],
                    mode: TagMode.Edit,
                  );
                },
                itemCount: state.tags.length,
            )
        ),
        Positioned(
            bottom: MediaQuery.of(context).padding.bottom + 50,
            child: FilledButton(onPressed: () {

            }, child: Text(logic.mode == TagMode.Edit ? "Save" : "Add"))
        )
      ]),
    );
  }




}