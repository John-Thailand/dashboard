import 'package:dashboard/controllers/menu_controller.dart';
import 'package:dashboard/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
        // ScaffoldWidgetの背景色です。
        scaffoldBackgroundColor: Colors.white,
        // Text Widgetの基本的なスタイルです。
        // Applies the Mulish font family from Google Fonts to every [TextStyle] in the given [textTheme].
        textTheme:
            GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.black,
        ),
        // 画面遷移にどのようなアニメーションを使うかというThemeです。
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            // FadeUpwardsPageTransitionsBuilder：Android向け標準トランジション
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        // アプリの基本色になります。
        primaryColor: Colors.blue,
      ),
      home: SiteLayout(),
    );
  }
}
