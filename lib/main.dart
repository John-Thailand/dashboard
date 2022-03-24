import 'package:dashboard/view/layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dashboard",
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
      home: const SiteLayout(),
    );
  }
}
