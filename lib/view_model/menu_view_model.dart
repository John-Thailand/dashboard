import 'package:dashboard/constants/side_menu_title.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final menuViewModel = StateNotifierProvider(
  (_) => MenuViewModel(),
);

class MenuViewModel extends StateNotifier<SideMenuTitle> {
  // コンストラクタ
  MenuViewModel() : super(SideMenuTitle.introduction);

  // フィールド
  // final UserRepository _repository;

  // メソッド
  void setSelectedSideMenuTitle(SideMenuTitle selectedSideMenuTitle) {
    // 同じ項目が選択された場合
    if (state == selectedSideMenuTitle) {
      // 何もしない
      return;
    }

    // そうでない場合、選択された項目をstateに保持する
    state = selectedSideMenuTitle;
  }
}
