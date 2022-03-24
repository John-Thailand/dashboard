import 'package:dashboard/view/style.dart';
import 'package:dashboard/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SideMenu extends HookConsumerWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ユーザーの状態を管理する
    final userState = ref.watch(userViewModel.notifier).state;

    return ListView(
      children: <Widget>[
        // Solution: ContainerによってDrawerHeaderの高さを設定
        Container(
          height: 216,
          color: Colors.blue,
          child: DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text(
                userState.name,
                style: TextStyles.sideMenuUserNameTextStyle,
              ),
              accountEmail: Text(
                userState.email,
                style: TextStyles.sideMenuUserEmailTextStyle,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(userState.imageUrl),
              ),
            ),
          ),
        ),
        ListTile(
          title: const Text(
            "Introduction",
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.person),
          onTap: () {
            // 自己紹介ページに遷移
          },
        ),
        ListTile(
          title: const Text(
            "Blog",
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.chat),
          onTap: () {
            // ブログページに遷移
          },
        ),
        ListTile(
          title: const Text(
            "Contact",
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
