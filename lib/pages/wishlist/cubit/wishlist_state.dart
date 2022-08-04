part of 'wishlist_cubit.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState.loading() = LoadingWishlistState;
  const factory WishlistState.loaded(List<Wish> wishes) = LoadedWishlistState;
}
