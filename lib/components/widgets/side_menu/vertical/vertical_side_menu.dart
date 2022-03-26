import 'package:dashboard/components/widgets/side_menu/side_menu_header.dart';
import 'package:dashboard/components/widgets/side_menu/vertical/vertical_side_menu_item.dart';
import 'package:flutter/material.dart';

class VerticalSideMenu extends StatelessWidget {
  const VerticalSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // ヘッダー
        const SideMenuHeader(),
        // サイドメニューの各項目
        VerticalSideMenuItem(
          icon: Icons.person,
          title: 'Introduction',
          onTap: () {},
        ),
        VerticalSideMenuItem(
          icon: Icons.chat,
          title: 'Blog',
          onTap: () {},
        ),
        VerticalSideMenuItem(
          icon: Icons.contact_mail,
          title: 'Contact',
          onTap: () {},
        ),
      ],
    );
  }
}
