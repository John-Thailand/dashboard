import 'package:auto_size_text/auto_size_text.dart';
import 'package:dashboard/components/widgets/side_menu/side_menu_header.dart';
import 'package:dashboard/view/style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HorizontalSideMenu extends HookConsumerWidget {
  const HorizontalSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: <Widget>[
        // Solution: ContainerによってDrawerHeaderの高さを設定
        const SideMenuHeader(),
        ListTile(
          title: const AutoSizeText(
            "Introduction",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.person),
          onTap: () {
            // 自己紹介ページに遷移
          },
        ),
        ListTile(
          title: const AutoSizeText(
            "Blog",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.chat),
          onTap: () {
            // ブログページに遷移
          },
        ),
        ListTile(
          title: const AutoSizeText(
            "Contact",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.contact_mail),
          onTap: () {
            // お問い合わせページに遷移
          },
        ),
        ListTile(
          title: const AutoSizeText(
            "Contact",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.contact_mail),
          onTap: () {
            // お問い合わせページに遷移
          },
        ),
      ],
    );
  }
}
