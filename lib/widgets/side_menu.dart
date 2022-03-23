import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text('ヘッダー'),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text("ボタン"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("ボタン"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("ボタン"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("ボタン"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("ボタン"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("ボタン"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("ボタン"),
          trailing: Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}
