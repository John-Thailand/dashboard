import 'package:auto_size_text/auto_size_text.dart';
import 'package:dashboard/view/style.dart';
import 'package:flutter/material.dart';

class VerticalSideMenuItem extends StatelessWidget {
  const VerticalSideMenuItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 自己紹介ページに遷移
      },
      onHover: (value) {
        // value
        //     ? menuController.onHover(itemName)
        //     : menuController.onHover("not hovering");
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(
              icon,
              color: CustomColor.grey,
            ),
            AutoSizeText(
              title,
              presetFontSizes: const [16, 15, 14, 13, 12, 11, 10],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.sideMenuItemTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
