import 'package:flutter/cupertino.dart';
import 'package:wishey/repositories/wish_repository.dart';
import 'package:wishey/wishlist/wishlist_state.dart';

class WishlistController with ChangeNotifier {
  WishlistController(this._wishRepository);

  final WishRepository _wishRepository;

  WishlistState state = const WishlistLoading();

  Future<void> initialize(String id) async {
    final wishes = await _wishRepository.getWishlistById(id);
    state = WishlistLoaded(wishes ?? []);
    notifyListeners();
  }
}
