import 'package:dashboard/components/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SideMenu(isDrawerMenu: false),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
