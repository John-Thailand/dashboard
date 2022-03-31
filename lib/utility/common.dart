import 'dart:io';

import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:url_launcher_web/url_launcher_web.dart' as url_launcher_web;

/// 外部リンクへの遷移（スマホ）
Future<void> launchUrl(String url) async {
  if (await url_launcher.canLaunch(url)) {
    if (Platform.isIOS) {
      url_launcher.launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      url_launcher.launch(url);
    }
  } else {
    throw 'Could not launch $url';
  }
}

/// 外部リンクへの遷移（Web）
Future<void> launchWebUrl(String url) async {
  await url_launcher_web.launch(url);
}
