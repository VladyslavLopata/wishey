import 'package:flutter/cupertino.dart';
import 'package:wishey/home/home_state.dart';
import 'package:wishey/repositories/wish_repository.dart';

class HomeController with ChangeNotifier {
  HomeController(this._wishRepository) {
    initialize();
  }

  final WishRepository _wishRepository;

  HomeState state = const HomeLoading();

  Future<void> initialize() async {
    final wishGroups = await _wishRepository.getWishes();
    state = HomeLoaded(wishGroups);
    notifyListeners();
  }
}
