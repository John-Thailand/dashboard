import 'package:dashboard/repository/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dashboard/model/user.dart';

final userViewModel = StateNotifierProvider(
  (_) => UserViewModel(UserRepository()),
);

class UserViewModel extends StateNotifier<User> {
  // コンストラクタ
  UserViewModel(
    this._repository,
  ) : super(
          User(
            name: 'Naoki Honda',
            email: 'hamoban69@gmail.com',
            imageUrl:
                'https://pbs.twimg.com/profile_images/885510796691689473/rR9aWvBQ_400x400.jpg',
          ),
        );

  // フィールド
  final UserRepository _repository;
  // int _page = 1;
  // bool _isLoading = false;

  // メソッド
  // Future<void> getArticles() async {
  //   if (_isLoading || !state.hasNext) {
  //     return;
  //   }

  //   _isLoading = true;

  //   final articles = await repository.fetchArticles(_page, state.keyword);
  //   final newArticles = [...state.articles, ...articles];

  //   if (articles.length % 20 != 0 || articles.length == 0) {
  //     state = state.copyWith(
  //       hasNext: false,
  //     );
  //   }

  //   state = state.copyWith(
  //     articles: newArticles,
  //   );

  //   _page++;
  //   _isLoading = false;
  // }
}
