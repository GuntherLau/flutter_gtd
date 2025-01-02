import 'package:flutter/cupertino.dart';

class CustomSettingMenu extends StatelessWidget {

  final IconData icon;
  final String title;
  final VoidCallback? onPress;

  const CustomSettingMenu({
    super.key,
    required this.icon,
    required this.title,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if(onPress != null) {
          onPress!();
        }
      },
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                Container(
                  margin: EdgeInsets.only(right: 6),
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  decoration: BoxDecoration(
                      color: Color(0xFFf4f6f7),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Icon(icon),
                ),
                Text(title, style: TextStyle(color: const Color(0xFF798497), fontSize: 14))

              ],
            ),

            const Icon(CupertinoIcons.right_chevron, size: 20, color: Color(0xFF798497),)
          ]
      ),
    );
  }


}