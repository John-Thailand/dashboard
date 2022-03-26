import 'package:dashboard/components/widgets/side_menu/horizontal/horizontai_side_menu.dart';
import 'package:dashboard/components/widgets/side_menu/vertical_side_menu.dart';
import 'package:dashboard/helpers/responsiveness.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required this.isDrawerMenu,
  }) : super(key: key);

  final bool isDrawerMenu;

  @override
  Widget build(BuildContext context) {
    return isDrawerMenu
        // ドロワーメニューの場合
        ? const HorizontalSideMenu()
        // サイドメニューの場合
        : ResponsiveWidget.isCustomScreen(context)
            // 画面の横幅サイズがカスタムスクリーンのサイズの場合
            ? const VerticalSideMenu()
            // 画面の横幅サイズがカスタムスクリーンよりも大きい場合
            : const HorizontalSideMenu();
  }
}
