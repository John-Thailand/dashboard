import 'package:dashboard/components/widgets/side_menu/horizontal/horizontal_side_menu_item.dart';
import 'package:dashboard/components/widgets/side_menu/side_menu_header.dart';
import 'package:flutter/material.dart';

class HorizontalSideMenu extends StatelessWidget {
  const HorizontalSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // Solution: ContainerによってDrawerHeaderの高さを設定
        const SideMenuHeader(),
        HorizontalSideMenuItem(
          iconData: Icons.person,
          title: 'Introduction',
          onTap: () {},
        ),
        HorizontalSideMenuItem(
          iconData: Icons.chat,
          title: 'Blog',
          onTap: () {},
        ),
        HorizontalSideMenuItem(
          iconData: Icons.contact_mail,
          title: 'Contact',
          onTap: () {},
        ),
      ],
    );
  }
}
