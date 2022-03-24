import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/components/widgets/side_menu.dart';
import 'package:dashboard/components/widgets/small_screen.dart';
import 'package:dashboard/components/widgets/top_nav.dart';
import 'package:flutter/material.dart';

import '../components/widgets/large_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: const Drawer(child: SideMenu()),
        body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
