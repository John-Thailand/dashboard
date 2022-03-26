import 'package:auto_size_text/auto_size_text.dart';
import 'package:dashboard/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SideMenuHeader extends HookConsumerWidget {
  const SideMenuHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ユーザーの状態を管理する
    final userState = ref.watch(userViewModel.notifier).state;

    // Solution: ContainerによってDrawerHeaderの高さを設定
    return Container(
      height: 216,
      color: Colors.blue,
      child: DrawerHeader(
        child: UserAccountsDrawerHeader(
          accountName: AutoSizeText(
            userState.name,
            presetFontSizes: const [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          accountEmail: AutoSizeText(
            userState.email,
            presetFontSizes: const [14, 13, 12, 11, 10],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(userState.imageUrl),
          ),
        ),
      ),
    );
  }
}
