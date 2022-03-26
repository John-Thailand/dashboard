import 'package:flutter/material.dart';

// 色を管理したクラス
class CustomColor {
  static Color light = const Color(0xFFF7F8FC);
  static Color lightGrey = const Color(0xFFA4A6B3);
  static Color grey = Colors.grey;
  static Color dark = const Color(0xFF363740);
  static Color active = const Color(0xFF3C19C0);
}

// テキストスタイル
class TextStyles {
  /// アップバー
  // タイトル
  static const appBarTitleTextStyle = TextStyle(
    color: Color(0xFFA4A6B3),
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  // ユーザー名
  static const appBarUserNameTextStyle = TextStyle(
    color: Color(0xFFA4A6B3),
  );

  /// サイドメニュー
  // サイドメニューアイテム
  static const sideMenuItemTextStyle = TextStyle(
    // fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  // サイドメニューのユーザー名
  static const sideMenuUserNameTextStyle = TextStyle(
    fontSize: 16.0,
  );
  // サイドメニューのメールアドレス
  static const sideMenuUserEmailTextStyle = TextStyle(
    fontSize: 14.0,
  );
}
