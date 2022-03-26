import 'package:dashboard/components/widgets/side_menu/horizontai_side_menu.dart';
import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SideMenu extends HookConsumerWidget {
  const SideMenu({
    Key? key,
    required this.isDrawerMenu,
  }) : super(key: key);

  final bool isDrawerMenu;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ユーザーの状態を管理する
    final userState = ref.watch(userViewModel.notifier).state;

    return isDrawerMenu
        // ドロワーメニューの場合
        ? const HorizontalSideMenu()
        // サイドメニューの場合
        : ResponsiveWidget.isCustomScreen(context)
            // 画面の横幅サイズがカスタムスクリーンのサイズの場合
            ? Container()
            // 画面の横幅サイズがカスタムスクリーンよりも大きい場合
            : const HorizontalSideMenu();
  }
}