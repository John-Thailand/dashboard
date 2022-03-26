import 'package:auto_size_text/auto_size_text.dart';
import 'package:dashboard/view/style.dart';
import 'package:flutter/material.dart';

class HorizontalSideMenuItem extends StatelessWidget {
  const HorizontalSideMenuItem({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final IconData iconData;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AutoSizeText(
        title,
        presetFontSizes: const [16, 15, 14, 13, 12, 11, 10],
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.sideMenuItemTextStyle,
      ),
      leading: Icon(iconData),
      onTap: onTap(),
    );
  }
}
