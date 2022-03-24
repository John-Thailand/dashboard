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
              accountName: Text(userState.name),
              accountEmail: Text(userState.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(userState.imageUrl),
              ),
            ),
          ),
        ),
        ListTile(
          title: const Text(
            "Introduction",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          leading: const Icon(Icons.person),
          onTap: () {
            // 自己紹介ページに遷移
          },
        ),
        ListTile(
          title: const Text(
            "Blog",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          leading: const Icon(Icons.chat),
          onTap: () {
            // ブログページに遷移
          },
        ),
        ListTile(
          title: const Text(
            "Contact",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
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
