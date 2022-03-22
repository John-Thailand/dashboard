import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/widgets/small_screen.dart';
import 'package:dashboard/widgets/top_nav.dart';
import 'package:flutter/material.dart';

import 'widgets/large_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
