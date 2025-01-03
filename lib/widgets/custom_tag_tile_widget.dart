

import 'package:common/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gtd/services/tag_service.dart';

import '../model/tag_model.dart';
import '../pages/tag_list/state.dart';



class CustomTagTileWidget extends StatelessWidget {

  final TagModel model;
  final TagMode mode;

  const CustomTagTileWidget({
    super.key,
    required this.model,
    required this.mode
  });

  @override
  Widget build(BuildContext context) {
    return mode == TagMode.View ? _buildView() : _buildEdit();
  }
  
  _buildView() {
    return GestureDetector(
      onTap: () {
        TagService.instance.goEditTagPage(model);
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.white
        ),
        child: Row(children: [
          Container(
            height: 50,
            width: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                color: model.color?.color
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(model.name ?? '', style: TextStyle(fontSize: 16, color: Colors.black))),
        ]),
      ),
    );
  }
  
  _buildEdit() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.white
      ),
    );
  }

}