import 'package:auto_size_text/auto_size_text.dart';
import 'package:dashboard/components/widgets/side_menu/side_menu_header.dart';
import 'package:dashboard/view/style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VerticalMenuItem extends HookConsumerWidget {
  const VerticalMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: <Widget>[
        const SideMenuHeader(),
        ListTile(
          title: const AutoSizeText(
            "Introduction",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.person),
          onTap: () {
            // 自己紹介ページに遷移
          },
        ),
        ListTile(
          title: const AutoSizeText(
            "Blog",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.chat),
          onTap: () {
            // ブログページに遷移
          },
        ),
        ListTile(
          title: const AutoSizeText(
            "Contact",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
          ),
          leading: const Icon(Icons.contact_mail),
          onTap: () {
            // お問い合わせページに遷移
          },
        ),
        ListTile(
          title: const AutoSizeText(
            "Contact",
            presetFontSizes: [16, 15, 14, 13, 12, 11, 10],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.sideMenuItemTextStyle,
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

// InkWell(
//       onTap: onTap(),
//       onHover: (value) {},
//       child: Container(
//         color: menuController.isHovering(itemName)
//             ? lightGrey.withOpacity(.1)
//             : Colors.transparent,
//         child: Row(
//           children: [
//             Visibility(
//               visible: menuController.isHovering(itemName) ||
//                   menuController.isActive(itemName),
//               child: Container(
//                 width: 6,
//                 height: 40,
//                 color: dark,
//               ),
//               maintainSize: true,
//               maintainState: true,
//               maintainAnimation: true,
//             ),
//             Expanded(
//                 child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(16),
//                   child: menuController.returnIconFor(itemName),
//                 ),
//                 if (!menuController.isActive(itemName))
//                   Flexible(
//                     child: CustomText(
//                       text: itemName,
//                       color: menuController.isHovering(itemName)
//                           ? dark
//                           : lightGrey,
//                     ),
//                   )
//                 else
//                   Flexible(
//                     child: CustomText(
//                       text: itemName,
//                       color: dark,
//                       size: 18,
//                       weight: FontWeight.bold,
//                     ),
//                   ),
//               ],
//             ))
//           ],
//         ),
//       ),
//     );