import 'package:dashboard/components/widgets/side_menu/side_menu.dart';
import 'package:dashboard/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/view/style.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LargeScreen extends HookConsumerWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ユーザーの状態を管理する
    final userState = ref.watch(userViewModel.notifier).state;

    return Row(
      children: [
        const Expanded(
          child: SideMenu(isDrawerMenu: false),
        ),
        Expanded(
          flex: 5,
          child: Card(
            color: Colors.grey[100],
            margin: EdgeInsets.all(MediaQuery.of(context).size.height / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage:
                      const AssetImage('assets/images/introduction_image.jpg'),
                  radius: MediaQuery.of(context).size.height / 10,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Text(
                  userState.name,
                  style: TextStyles.introductionNameTextStyle,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 56),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github),
                      onPressed: () {
                        // Githubへ遷移
                      },
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 120),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.twitter),
                      onPressed: () {
                        // Twitterへ遷移
                      },
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 120),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram),
                      onPressed: () {
                        // instagramへ遷移
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
