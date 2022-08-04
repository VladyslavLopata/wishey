import 'package:wishey/models/wishlist.dart';

abstract class WishlistState {}

class WishlistLoading implements WishlistState {
  const WishlistLoading();
}

class WishlistLoaded implements WishlistState {
  const WishlistLoaded(this.wishes);
  final List<Wish> wishes;
}
