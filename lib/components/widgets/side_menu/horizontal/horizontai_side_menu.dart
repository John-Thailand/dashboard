import 'package:auto_size_text/auto_size_text.dart';
import 'package:dashboard/components/widgets/side_menu/side_menu_header.dart';
import 'package:dashboard/constants/side_menu_title.dart';
import 'package:dashboard/view/style.dart';
import 'package:dashboard/view_model/menu_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HorizontalSideMenu extends HookConsumerWidget {
  const HorizontalSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // メニューを管理したStateProviderを利用する
    final viewModel = ref.watch(menuViewModel.notifier);

    return ListView(
      children: <Widget>[
        // Solution: ContainerによってDrawerHeaderの高さを設定
        const SideMenuHeader(),
        ListTile(
          tileColor: (viewModel.state == SideMenuTitle.introduction)
              ? CustomColor.light
              : Colors.white,
          title: const AutoSizeText(
            "Introduction",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.person),
          onTap: () {
            // Introductionを選択
            viewModel.setSelectedSideMenuTitle(SideMenuTitle.introduction);
          },
        ),
        ListTile(
          tileColor: (viewModel.state == SideMenuTitle.blog)
              ? CustomColor.light
              : Colors.white,
          title: const AutoSizeText(
            "Blog",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.chat),
          onTap: () {
            // Blogを選択
            viewModel.setSelectedSideMenuTitle(SideMenuTitle.blog);
          },
        ),
        ListTile(
          tileColor: (viewModel.state == SideMenuTitle.contact)
              ? CustomColor.light
              : Colors.white,
          title: const AutoSizeText(
            "Contact",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.contact_mail),
          onTap: () {
            // Contactを選択
            viewModel.setSelectedSideMenuTitle(SideMenuTitle.contact);
          },
        ),
      ],
    );
  }
}
