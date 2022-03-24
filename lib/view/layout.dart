import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/components/widgets/side_menu.dart';
import 'package:dashboard/components/widgets/small_screen.dart';
import 'package:dashboard/components/widgets/top_nav.dart';
import 'package:dashboard/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/widgets/large_screen.dart';

class SiteLayout extends HookConsumerWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    // ユーザーの状態を管理する
    final userState = ref.watch(userViewModel.notifier).state;

    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey, userState),
        drawer: const Drawer(child: SideMenu()),
        body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
