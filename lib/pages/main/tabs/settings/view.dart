import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gtd/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:state_management/main.dart';
import 'package:theming/main.dart';

import '../../../../services/tag_service.dart';
import 'logic.dart';
import 'widgets/custom_setting_menu.dart';
import 'widgets/group_settings.dart';
import 'widgets/group_title.dart';

class TabSettingsComponent extends StatefulWidget {
  @override
  State<TabSettingsComponent> createState() => _TabSettingsComponentState();
}

class _TabSettingsComponentState extends State<TabSettingsComponent> with CustomThemeSwitchingStatefulMixin<TabSettingsComponent> {
  final logic = Get.put(TabSettingsLogic());
  final state = Get.find<TabSettingsLogic>().state;

  @override
  void dispose() {
    Get.delete<TabSettingsLogic>();
    super.dispose();
  }

  @override
  Widget buildWithTheme(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: MediaQuery.of(context).padding.top),

        GroupTitle("gtd_app_settings".tr),
        GroupSettings([
          CustomSettingMenu(icon: CupertinoIcons.settings, title: "gtd_general".tr),
          CustomSettingMenu(icon: CupertinoIcons.tag, title: "gtd_tags".tr, onPress: () {
            TagService.instance.goShowTagsPage();
          },),
          CustomSettingMenu(icon: CupertinoIcons.calendar, title: "gtd_calendars".tr),
          CustomSettingMenu(icon: CupertinoIcons.drop, title: "gtd_theming".tr),
          CustomSettingMenu(icon: CupertinoIcons.bell, title: "gtd_reminders".tr),
        ]),

        GroupTitle("gtd_help_support".tr),
        GroupSettings([
          CustomSettingMenu(icon: CupertinoIcons.star, title: "gtd_star_5".tr),
          CustomSettingMenu(icon: CupertinoIcons.arrowshape_turn_up_right, title: "gtd_share".tr),
          // CustomSettingMenu(icon: CupertinoIcons.calendar, title: "Calendars"),
          CustomSettingMenu(icon: CupertinoIcons.captions_bubble, title: "gtd_contact".tr),
          CustomSettingMenu(icon: CupertinoIcons.question_diamond, title: "gtd_req_feature".tr),
        ]),
      ]),
    );
  }
}