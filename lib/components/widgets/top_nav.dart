import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/model/user.dart';
import 'package:dashboard/view/style.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(
        BuildContext context, GlobalKey<ScaffoldState> key, User userState) =>
    AppBar(
      // 画面が大きい場合はロゴを表示し、そうでない場合はドロワーメニューを表示する
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset("assets/icons/logo.png", width: 28),
                )
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // ドロワーを開く
                key.currentState?.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(
        children: [
          const Visibility(
            child: Text(
              "Dashboard",
              style: TextStyles.appBarTitleTextStyle,
            ),
          ),
          // 空白の間を入れる
          Expanded(child: Container()),
          IconButton(
            onPressed: () {
              // 設定の処理を記述する
            },
            icon: Icon(
              Icons.settings,
              color: CustomColor.dark.withOpacity(.7),
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  // 通知の処理を記述する
                },
                icon: const Icon(Icons.notifications),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: CustomColor.active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: CustomColor.light,
                      width: 2,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: CustomColor.lightGrey,
            child: const SizedBox.shrink(),
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            userState.name,
            style: TextStyles.appBarUserNameTextStyle,
          ),
          const SizedBox(
            width: 16,
          ),
          CircleAvatar(
            backgroundColor: CustomColor.light,
            backgroundImage: AssetImage(userState.imageUrl),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: CustomColor.dark),
      backgroundColor: Colors.transparent,
    );
