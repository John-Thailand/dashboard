import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // Solution: ContainerによってDrawerHeaderの高さを設定
        Container(
          height: 216,
          color: Colors.blue,
          child: DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("User Email"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/profile_images/885510796691689473/rR9aWvBQ_400x400.jpg"),
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
